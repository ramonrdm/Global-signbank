import json

from django.http import HttpResponse, JsonResponse
from django.apps import apps
from django.core.serializers.python import Serializer
from django.core.serializers.json import DjangoJSONEncoder


def api(request):
    table = request.GET.get('table')
    model = get_model_from_db_table(table)

    if not model:
        return JsonResponse(
            {'error': 'A tabela não possui um model associado'}, status=400
        )

    qs = model.objects.all()
    serializer = FlatJsonSerializer()

    return HttpResponse(
        serializer.serialize(qs), content_type='application/json',
    )


def get_model_from_db_table(table):
    for model in apps.get_models():
        if model._meta.db_table == table:
            return model
    return None


class FlatJsonSerializer(Serializer):
    def get_dump_object(self, obj):
        data = self._current

        if not self.selected_fields or 'id' in self.selected_fields:
            data['id'] = obj.id

        return data

    def end_object(self, obj):
        if not self.first:
            self.stream.write(', ')
        json.dump(self.get_dump_object(obj), self.stream, cls=DjangoJSONEncoder)
        self._current = None

    def start_serialization(self):
        self.stream.write("[")

    def end_serialization(self):
        self.stream.write("]")

    def getvalue(self):
        return super(Serializer, self).getvalue()
