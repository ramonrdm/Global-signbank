# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-06-01 08:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pages', '0002_auto_20170323_1337'),
    ]

    operations = [
        migrations.AlterField(
            model_name='page',
            name='title_chinese',
            field=models.CharField(blank=True, max_length=200, verbose_name='Chinese title'),
        ),
    ]