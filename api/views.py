import logging
from rest_framework import generics
import mysql.connector
from .models import Users, MessageFrom, MessageTo, UpdateNext, UserProfile
from rest_framework.response import Response
from rest_framework.views import APIView
from .serializers import PenziMessageSerializer, UserProfileSerializer
from django.conf import settings

class MatchProcessor:
    def __init__(self, db_params):
        self.db_params = db_params
        self.lower_age = 0
        self.upper_age = 100
        self.town = ""
        self.gender = ""
        self.potential_matches = []
        self.logger = logging.getLogger(__name__)

    def process_match_message(self, message_content, msisdn):
        try:
            if message_content.startswith('match#'):
                _, age_range_str, town, gender = message_content.split('#')
                self.lower_age, self.upper_age = map(int, age_range_str.split('-'))
                self.town = town
                self.gender = gender.lower()

                with mysql.connector.connect(**self.db_params) as connection:
                    cursor = connection.cursor()

                    cursor.execute("SELECT * FROM api_users WHERE age BETWEEN %s AND %s AND town = %s AND gender = %s",
                                   (self.lower_age, self.upper_age, self.town, self.gender))
                    self.potential_matches = cursor.fetchall()

                last_queried_id_obj, _ = UpdateNext.objects.get_or_create(msisdn=msisdn, lower_age=self.lower_age,
                                                                          upper_age=self.upper_age, town=self.town,
                                                                          gender=self.gender)
                last_queried_id = last_queried_id_obj.last_queried_id

                if not self.potential_matches:
                    return "No potential matches found."

                response = self.format_matches_response(self.potential_matches[:3])
                response += " Send NEXT to 22141 to receive details of the remaining matches"

                UpdateNext.objects.update_or_create(msisdn=msisdn, lower_age=self.lower_age,
                                                    upper_age=self.upper_age, town=self.town, gender=self.gender,
                                                    defaults={'last_queried_id': min(2, len(self.potential_matches[:3]) - 1)})

                return response

            elif message_content == 'NEXT':
                return self.get_next_matches(msisdn)

            else:
                return "Please send a valid message in the format e.g., 'match#26-30#town' or 'NEXT'."

        except Exception as e:
            self.logger.exception("An error occurred while processing the message.")
            return "An error occurred while processing the message."

    def get_next_matches(self, msisdn):
        try:
            last_queried_id_obj, _ = UpdateNext.objects.get_or_create(msisdn=msisdn)

            last_queried_id = last_queried_id_obj.last_queried_id
            self.lower_age = last_queried_id_obj.lower_age
            self.upper_age = last_queried_id_obj.upper_age
            self.town = last_queried_id_obj.town
            self.gender = last_queried_id_obj.gender

            with mysql.connector.connect(**self.db_params) as connection:
                cursor = connection.cursor()

                cursor.execute("SELECT * FROM api_users WHERE age BETWEEN %s AND %s AND town = %s AND gender = %s",
                               (self.lower_age, self.upper_age, self.town, self.gender))
                self.potential_matches = cursor.fetchall()

            if last_queried_id < len(self.potential_matches) - 1:
                next_matches = self.potential_matches[last_queried_id:min(last_queried_id + 3, len(self.potential_matches) - 1)]
                response = self.format_matches_response(next_matches)

                last_queried_id_obj.last_queried_id = min(last_queried_id + 3, len(self.potential_matches) - 1)
                last_queried_id_obj.save()

                return response

            else:
                return "No more potential matches found."

        except Exception as e:
            self.logger.exception("An error occurred while fetching potential matches.")
            return "An error occurred while fetching potential matches."

    def format_matches_response(self, potential_matches):
        response = ""
        for match in potential_matches:
            response += f"  {match[1]}, Aged: {match[2]}, MSISDN: {match[6]}, "
        return response.strip()

class UserProfileDetail(generics.RetrieveAPIView):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer
    lookup_field = 'id'        

class PenziMessageView(APIView):
    serializer_class = PenziMessageSerializer
    logger = logging.getLogger(__name__)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.db_params = {
            "host": "localhost",
            "database": "api",
            "user": "root",
            "password": "dixon2000"
        }
        self.match_processor = MatchProcessor(self.db_params)

    def post(self, request):
        try:
            serializer = self.serializer_class(data=request.data)
            serializer.is_valid(raise_exception=True)
            message_content = serializer.validated_data['message_content']
            msisdn = serializer.validated_data.get('msisdn')
            #short_code = serializer.validated_data.get('short_code')

            response_message = self.generate_response_message(message_content, msisdn)
            self.save_message_from(message_content, msisdn)
            #self.save_message_to(response_message, short_code)
            if message_content.startswith('start#'):
                self.save_user_info(message_content, msisdn)
            elif message_content.startswith('details#'):
                self.update_user_info(msisdn, message_content)

            return Response({'message': response_message})

        except Exception as e:
            self.logger.exception("An error occurred while processing the request.")
            return Response({'error': 'An unexpected error occurred.'}, status=500)

    def generate_response_message(self, message_content, msisdn):
        if message_content.startswith('penzi'):
            return "Welcome to our dating service with 6000 potential dating partners! To register SMS start#name#age#gender#county#town to 22141. E.g., start#John Doe#26#Male#Nakuru#Naivasha"
        elif message_content.startswith('start#'):
            return self.process_start_message(message_content)
        elif message_content.startswith('details#'):
            return self.process_details_message(message_content)
        elif message_content.startswith('MYSELF'):
            return self.process_myself_message(message_content)
        elif message_content.startswith('match#'):
            return self.match_processor.process_match_message(message_content, msisdn)
        elif message_content == 'NEXT':
            return self.match_processor.process_match_message(message_content, msisdn)

    def save_message_from(self, message_content, msisdn):
        try:
            MessageFrom.objects.create(message_content=message_content, msisdn=msisdn)
        except Exception as e:
            self.logger.exception("Error while saving message sender.")

    def save_message_to(self, response_message, short_code):
        try:
            if response_message is not None:
                MessageTo.objects.create(response_content=response_message, short_code=short_code)
                response_message = "response message is empty"
                MessageTo.objects.create(response_content=response_message, short_code=short_code)
        except Exception as e:
            self.logger.exception("Error while saving response message.")

    def save_user_info(self, message_content, msisdn):
        try:
            if not Users.objects.filter(msisdn=msisdn).exists():
                split_content = message_content.split('#')
                if len(split_content) >= 6:
                    name, age, gender, county, town = split_content[1:]
                    Users.objects.create(name=name, age=age, gender=gender, county=county, town=town, msisdn=msisdn)
        except Exception as e:
            self.logger.exception("Error while saving user information.")

    def update_user_info(self, msisdn, message_content):
        try:
            split_content = message_content.split("#")
            if len(split_content) >= 6:
                level_of_education, profession, marital_status, religion, ethnicity = split_content[1:6]
                user = Users.objects.get(msisdn=msisdn)
                user.level_of_education = level_of_education
                user.profession = profession
                user.marital_status = marital_status
                user.religion = religion
                user.ethnicity = ethnicity
                user.save()
        except Users.DoesNotExist:
            self.logger.exception("User does not exist.")
        except Exception as e:
            self.logger.exception("Error while updating user information.")

    def process_start_message(self, message_content):
        try:
            split_content = message_content.split("#")
            if len(split_content) < 6:
                return "Less details provided"
            else:
                name = split_content[1]
                return f'Your profile has been created successfully {name}. SMS details#levelOfEducation#profession#maritalStatus#religion#ethnicity to 22141.'
        except Exception as e:
            self.logger.exception("Error while processing start message.")
            return "An error occurred while processing your request."

    def process_details_message(self, message_content):
        try:
            split_content = message_content.split("#")
            if len(split_content) < 7:
                return  "This is the last stage of registration. SMS a brief description of yourself to 22141 starting with the word MYSELF. E.g., MYSELF chocolate, lovely, sexy etc."
            else:
                msisdn = split_content[0]
                level_of_education, profession, marital_status, religion, ethnicity = split_content[1:6]
                user = Users.objects.get(msisdn=msisdn)
                user.level_of_education = level_of_education
                user.profession = profession
                user.marital_status = marital_status
                user.religion = religion
                user.ethnicity = ethnicity
                user.save()
        except Users.DoesNotExist:
            self.logger.exception("User does not exist.")
        except Exception as e:
            self.logger.exception("Error while processing details message.")
            return "An error occurred while processing your request please enter details..."

    def process_myself_message(self, message_content):
        try:
            description = message_content.split('MYSELF ')[1].strip()
            msisdn = self.request.data.get('msisdn')

            user = Users.objects.get(msisdn=msisdn)
            user.description = description
            user.save()

            return "You are now registered for dating. To search for a MPENZI, SMS match#age#town#gender to 22141 and meet the person of your dreams.E.g., match#23-25#Kisumu#female"
        except Users.DoesNotExist:
            self.logger.exception("User does not exist.")
            return "User not found."
        except Exception as e:
            self.logger.exception("Error while processing MYSELF message.")
            return "An error occurred while processing your request."

