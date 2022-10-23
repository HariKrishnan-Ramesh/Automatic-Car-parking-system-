from django.urls import path
from . import views

urlpatterns=[
    path('slot',views.getData),
    path('slotadd',views.additem,name="slotadd"),
    path('Slot_det',views.slot_list.as_view())
]