from rest_framework import serializers
from slot_data.models import Slot_det


class Slot_serializers(serializers.ModelSerializer):
    class Meta:
        model=Slot_det
        # fields='__all__'
        exclude=['id']
        # fields=['slot_no','status']