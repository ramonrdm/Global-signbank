from django.db import *
from django.core.exceptions import ObjectDoesNotExist
from signbank.dictionary.models import *
from signbank.video.models import *
import os
import shutil
import json

json_data = open("/var/www/signbank/repo/signbank/dictionary/migracao1.json", encoding="utf-8")
data1 = json.load(json_data)

dataset = Dataset.objects.get(name="Libras")
portugues = Language.objects.get(name="Brazilian Portuguese")
ingles = Language.objects.get(name="English")


for sinal in data1["dictionary_gloss"]:
	if sinal["inWeb"] != 4:
		keyword = Keyword()
		keyword_ptBR = Keyword()
		gloss = Gloss()
		handshape = Handshape.objects.get(english_name=sinal["grupoSinal"]+"_"+sinal["domhndsh"])
		nome = AnnotationIdglossTranslation()
		traducao = Translation()
		traducaoptBR = Translation()

		try:
			keyword = Keyword.objects.get(text=sinal["nomeIngles"])
		except ObjectDoesNotExist:
			keyword.text = sinal["nomeIngles"]
			keyword.save()

		try :
			keyword_ptBR = Keyword.objects.get(text=sinal["nome_sinal"])
		except ObjectDoesNotExist:
			keyword_ptBR.text = sinal["nome_sinal"]
			keyword_ptBR.save()

		gloss.id = sinal["id"]
		if AnnotationIdglossTranslation.objects.filter(text=sinal["idgloss"]).count() > 0:
			print("hmm")
			sinal["idgloss"] = input("Já existe um bagulho com esse nome:"+sinal["idgloss"])
		if len(sinal["idgloss"]) < 2:
			sinal["idgloss"] = sinal["idgloss"]+" "

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
			print("")

		src = "/home/administrador-admin/Documentos/imagens_libras/idsinais.libras.ufsc.br/dados/fotosDeSinais/"
		src_files = os.listdir(src)
		for file_name in src_files:
			if file_name[0]+file_name[1] != "sw":
				if file_name == sinal["id"]+".jpg":
					full_file_name = os.path.join(src, file_name)
					print(full_file_name)
					if (os.path.isfile(full_file_name)):
						shutil.copy(full_file_name, "/var/www/signbank/writable/glossimage/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/"+sinal["idgloss"]+"-"+sinal["id"]+".jpg")
		gloss.save()

		nome.text = sinal["idgloss"]
		nome.gloss_id = gloss.id
		nome.language_id = portugues.id
		nome.save()

		traducao.index = 0
		traducao.gloss_id = gloss.id
		traducao.translation_id = keyword.id
		traducao.language_id = ingles.id
		traducao.save()

		traducaoptBR.index = 0
		traducaoptBR.gloss_id = gloss.id
		traducaoptBR.translation_id = keyword_ptBR.id
		traducaoptBR.language_id = portugues.id
		traducaoptBR.save()

		#FAZER O VIDEO
		video = GlossVideo()
		video.videofile = "/glossvideo/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/"+sinal["idgloss"]+"-"+sinal["id"]+".mp4"
		video.gloss = gloss
		video.version = 0


		video_full_path = "/var/www/signbank/writable/glossvideo/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/"+sinal["idgloss"]+"-"+sinal["id"]+".mp4"
		try:
			os.mkdir("/var/www/signbank/writable/glossvideo/"+sinal["idgloss"][0]+sinal["idgloss"][1]+"/")
		except FileExistsError:
			print("")


		src = "/home/administrador-admin/Documentos/videos_libras/idsinais.libras.ufsc.br/dados/videos/"
		src_files = os.listdir(src)
		for file_name in src_files:
			if file_name == sinal["id"]+".mp4":
				full_file_name = os.path.join(src, file_name)
				print(full_file_name)
				if (os.path.isfile(full_file_name)):
					shutil.copy(full_file_name, video_full_path)
		video.save()
