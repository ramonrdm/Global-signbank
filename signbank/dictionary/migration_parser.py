from django.db import *
from signbank.dictionary.models import *
import os
import urllib.request
import json

json_data = open("/var/www/signbank/repo/signbank/dictionary/migracao1.json", encoding="utf-8")
data1 = json.load(json_data)

dataset = Dataset.objects.get(name="Libras")
portugues = Language.objects.get(name="Brazilian Portuguese")
ingles = Language.objects.get(name="English")


for sinal in data1["dictionary_gloss"]:
	if sinal["inWeb"] != 4:
		keyword = Keyword()
		gloss = Gloss()
		handshape = Handshape.objects.get(english_name=sinal["grupoSinal"]+"_"+sinal["domhndsh"])
		nome = AnnotationIdglossTranslation()
		traducao = Translation()
		keyword.text = sinal["nomeIngles"]
		keyword.save()
		gloss.id = sinal["id"]
		gloss.idgloss = sinal["idgloss"]
		gloss.dataset = dataset
		gloss.imagem = sinal["idgloss"][0]+sinal["idgloss"][1]+"/"+sinal["idgloss"]+"-"+sinal["id"]+".jpg"
		gloss.creationDate = sinal["creationDate"][:-9]
		gloss.domhndsh = handshape.machine_value
		
		loc = ["testa", "olhos_nariz", "boca_queixo", "pescoco", "ombro", "bracos", "pernas", "espaco_neutro", "tronco"]
		gloss.localizacao = loc[int(sinal["localizacao"])-1]	
		gloss.inWeb = 1
		try:
			os.mkdir("/var/www/signbank/writable/glossimage/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/")
		except FileExistsError:
			print("jatem")

		urllib.request.urlretrieve("http://idsinais.libras.ufsc.br/dados/fotosDeSinais/"+sinal["id"]+".jpg", "/var/www/signbank/writable/glossimage/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/"+sinal["idgloss"]+"-"+sinal["id"]+".jpg")

		gloss.save()
		nome.text = sinal["nome_sinal"]
		nome.gloss_id = gloss.id
		nome.language_id = portugues.id
		nome.save()
		traducao.index = 0
		traducao.gloss_id = gloss.id
		traducao.translation_id = keyword.id
		traducao.language_id = ingles.id
		traducao.save()