from django.db import *
from signbank.dictionary.models import *


dataset = Dataset.objects.get(pk=4)
portugues = Language.objects.get(pk = 3)
ingles = Language.objects.get(pk=1)
keyword = Keyword()
sinal = Gloss()
nome = AnnotationIdglossTranslation()
nome_eng = AnnotationIdglossTranslation()
traducao = Translation()

keyword.text = "testing"
keyword.save()

sinal.idgloss = "Testando"
sinal.dataset = dataset
sinal.save()

nome.text = "Testando"
nome.gloss_id = sinal.id
nome.language_id = portugues.id
nome.save()