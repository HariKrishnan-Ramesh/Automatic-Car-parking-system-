# Generated by Django 4.1.1 on 2022-09-21 10:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('slot_data', '0004_alter_slot_det_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='slot_det',
            name='event_time',
            field=models.TimeField(auto_now_add=True),
        ),
    ]