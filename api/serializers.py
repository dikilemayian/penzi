from rest_framework import serializers
from .models import MessageTo
from .models import UserProfile

class PenziMessageSerializer(serializers.Serializer):
    msisdn = serializers.CharField(max_length=15)
    #short_code = serializers.CharField(max_length=6)
    message_content = serializers.CharField()
     

    def create(self, validated_data):
        message_to = MessageTo.objects.create(msisdn=validated_data['msisdn'])
        return message_to

class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = '__all__'        

 
             
