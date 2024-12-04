# Generated by Django 5.1.3 on 2024-11-30 13:50

import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('database', '0024_minigame_remove_nguoidung_vouchers'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='minigame',
            name='image',
        ),
        migrations.RemoveField(
            model_name='minigame',
            name='url',
        ),
        migrations.AddField(
            model_name='minigame',
            name='date_created',
            field=models.DateTimeField(auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]