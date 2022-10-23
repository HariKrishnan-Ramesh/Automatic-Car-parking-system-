from rest_framework import serializers
from user_data.models import User_login
from rest_framework.validators import UniqueTogetherValidator


class Itemserializers(serializers.ModelSerializer):
    def create(self, validated_data):
        user = User_login.objects.create_user(**validated_data)
        return user
    class Meta:
        model=User_login
        fields='__all__'
    validators = [
            UniqueTogetherValidator(
                queryset=User_login.objects.all(),
                fields=['name', 'email']
            )
        ]