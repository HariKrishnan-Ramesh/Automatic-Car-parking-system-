from sre_constants import SUCCESS
import string
from urllib import request
from rest_framework import status
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
# from my_project.api import serializers
from slot_data.models import Slot_det as slot
from .serializers import Slot_serializers
from rest_framework.generics import ListAPIView
from rest_framework.decorators import api_view, APIView
from rest_framework.response import Response
from django.http import Http404

# Create your views here.
@api_view(['GET'])
def getData(request):
    items=slot.objects.all()
    serializer1=Slot_serializers(items,many=True)
    if request.method == 'GET':
        return Response(serializer1.data,status=status.HTTP_200_OK)
    else:
        return Response(serializer1.errors)    



@api_view(['POST'])
def additem(request):
    # items=Item.objects.all()
    serializer1=Slot_serializers(data=request.data)
    if serializer1.is_valid():
        serializer1.save()
        return Response(serializer1.data)


# class slot_list(APIView):
#     # def get(self,request):
#     # def get(self,request):
#             # val = slot.objects.latest('id')
#             # # result = slot.objects.filter(id=val)
#             # print(val)
#             # serializer = Slot_serializers(val)
#             # if request.method == 'GET':
#             #     return Response(serializer.data)
#             val = slot.objects.all()
#             serializer = Slot_serializers(val)
#             # if request.method == 'GET':
#             #     # return Response(serializer.data)
#             #     return Response(serializer.data)
class slot_list(ListAPIView):
    queryset=slot.objects.all()
    serializer_class=Slot_serializers