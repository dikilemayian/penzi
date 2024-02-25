from django.db import models
from django.contrib.auth.models import User
from django.db import models

class MessageFrom(models.Model):
    msisdn = models.CharField(max_length=15)
    message_content = models.TextField()  
    created_at = models.DateTimeField(auto_now_add=True)  

    def __str__(self):
        return self.message_content

     
class MessageTo(models.Model):
    short_code = models.CharField(max_length=6)
    response_content = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.short_code

class Users(models.Model):
    name = models.CharField(max_length=255)
    age = models.IntegerField() 
    gender = models.CharField(max_length=10)
    county = models.CharField(max_length=255)
    town = models.CharField(max_length=255)
    msisdn = models.CharField(max_length = 15)
    level_of_education = models.CharField(max_length=255, blank=True, null=True)
    profession = models.CharField(max_length=255, blank=True, null=True)
    marital_status = models.CharField(max_length=50, blank=True, null=True)
    religion = models.CharField(max_length=50, blank=True, null=True)
    ethnicity = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField()
    registration_time = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

 

class UpdateNext(models.Model):
    msisdn = models.CharField(max_length=20, primary_key = True)
    lower_age = models.IntegerField()
    upper_age = models.IntegerField()
    town = models.CharField(max_length=100)
    gender = models.CharField(max_length = 50)
    last_queried_id = models.IntegerField(default=0)
     

    class meta:
        db_table = 'api_updatenext'

from django.db import models

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    profile_picture = models.ImageField(upload_to='profile_pictures/', null=True, blank=True)
    name = models.CharField(max_length=100)
    description = models.TextField()
    location = models.CharField(max_length=100)
    age = models.IntegerField()
    timestamp = models.DateTimeField(auto_now_add=True)
     

    def __str__(self):
        return self.user.username

class UserMatch(models.Model):
    msisdn = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    age = models.IntegerField()
    town = models.CharField(max_length=255)
    timestamp = models.DateTimeField(auto_now_add=True)
    

    def __str__(self):
        return f"{self.name}, aged: {self.age}, town: {self.town}"



