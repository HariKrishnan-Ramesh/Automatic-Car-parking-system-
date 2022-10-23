from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from user_data.models import User_login
from .serializers import Itemserializers
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import IsAdminUser
from django.contrib.auth.models import User

# Create your views here.
@api_view(['GET'])
def getData(request):
    items=User_login.objects.all()
    serializer=Itemserializers(items,many=True)
    return Response(serializer.data)



@api_view(['POST'])
def additem(request):
    # items=Item.objects.all()
    serializer=Itemserializers(data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)


class UserRecordView(APIView):
    """
    API View to create or get a list of all the registered
    users. GET request returns the registered users whereas
    a POST request allows to create a new user.
    """
    permission_classes = [IsAdminUser]

    def get(self, format=None):
        users = User.objects.all()
        serializer = Itemserializers(users, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = Itemserializers(data=request.data)
        if serializer.is_valid(raise_exception=ValueError):
            serializer.create(validated_data=request.data)
            return Response(
                serializer.data,
                status=status.HTTP_201_CREATED
            )
        return Response(
            {
                "error": True,
                "error_msg": serializer.error_messages,
            },
            status=status.HTTP_400_BAD_REQUEST
        )
