from django.db import models

# Create your models here.
class Slot_det(models.Model):
    slot_no=models.PositiveSmallIntegerField()
    event_time=models.TimeField(auto_now_add=True)
    status=models.IntegerField()