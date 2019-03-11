from django.db import *
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.models import User
from signbank.dictionary.models import *
from signbank.video.models import *
import os
import shutil
import json

json_data = open("/var/www/signbank/repo/signbank/dictionary/users.json", encoding="utf-8")
data1 = json.load(json_data)

json_data = open("/var/www/signbank/repo/signbank/dictionary/migracao.json", encoding="utf-8")
data2 = json.load(json_data)


for user in data1["usuarios"]:
    usuario = User()
    usuario.id = user["id"]
    usuario.username=user["nome"]
    usuario.email = user["email"]
    usuario.first_name = user["nomeCompleto"].split(" ", 1)[0]
    usuario.date_joined = user["dataCadastro"]
    if user["grupo"] == 1:
        usuario.is_staff = 1
        usuario.is_superuser = 1
    else:
        usuario.is_staff = 1
        usuario.is_superuser = 0
    usuario.save()


for sinal in data2["dictionary_gloss"]:
    if sinal["inWeb"] != "4":
        try :
            usuario = User.objects.get(pk=sinal["nomePostador"])
            gloss = Gloss.objects.get(pk=sinal["id"])
        except ObjectDoesNotExist:
            continue
        else:
            gloss.creator.add(usuario)
            gloss.save()
