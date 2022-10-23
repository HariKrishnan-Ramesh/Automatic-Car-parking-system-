from django.db import models

# Create your models here.
class User_login(models.Model):
    name=models.CharField(max_length=200)
    mail=models.CharField(max_length=400)
    password=models.CharField(max_length=500)