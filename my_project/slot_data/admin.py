from django.contrib import admin
from .models import Slot_det
# Register your models here.
@admin.register(Slot_det)
class Slotadmin(admin.ModelAdmin):
    list_display=['slot_no','event_time','status']