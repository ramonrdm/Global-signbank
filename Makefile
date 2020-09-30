#!make
include .env

_FRONTEND_URL="http://$(FRONTEND_HOST):8000"

_DOCKER_COMPOSE_FILE=deploy-scripts/docker-compose.yml

help:
	grep '^[^#[:space:]].*:' Makefile | awk -F ":" '{print $$1}'

clean:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) down
	@$( $(shell docker ps -q --filter="name=$(DOCKER_PROJECT_NAME)") | docker stop )
	@$( $(shell docker ps -a -q --filter="name=$(DOCKER_PROJECT_NAME)") | docker rm )
	@$( $(shell docker images -q --filter="reference=*$(DOCKER_PROJECT_NAME)*") | docker rmi )

dry-run:
	@echo "Defined in this Makefile:"
	@echo "    DOCKER_PROJECT_NAME: $(DOCKER_PROJECT_NAME)"
	@echo "    _DOCKER_COMPOSE_FILE: $(_DOCKER_COMPOSE_FILE)"
	@echo "Docker-compose config:"
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) config

run:
ifeq ($(DEBUG), False)
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) pull
endif
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) build
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) up -d --force-recreate
	@echo "Project at $(_FRONTEND_URL)"

liverun:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) up

logs:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) logs -f -t

rl:
	$(MAKE) run
	$(MAKE) logs

admin:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py createsuperuser

collectstatic:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py collectstatic --noinput

update-models:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py makemigrations
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py migrate

dump-data:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py dumpdata dictionary.Localization dictionary.HandednessGroup dictionary.Handedness > data.json

load-data:
	@docker-compose -f $(_DOCKER_COMPOSE_FILE) -p $(DOCKER_PROJECT_NAME) exec web python /code/bin/develop.py loaddata /code/signbank/dictionary/fixtures/data.json