.RECIPEPREFIX := >
PY ?= python
MANAGE := $(PY) manage.py

.PHONY: rPHONY: run migrate makemigrations superuser schema-json schema-yaml

run:
> $(MANAGE) runserver

migrate:
> $(MANAGE) migrate

makemigrations:
> $(MANAGE) makemigrations

superuser:
> $(MANAGE) createsuperuser

schema-json:
> $(MANAGE) spectacular --file schema.json --format json

schema-yaml:
> $(MANAGE) spectacular --file schema.yaml --format yaml