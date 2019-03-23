build:
	docker-compose -f local.yml build

up:
	docker-compose -f local.yml up

up-d:
	docker-compose -d -f local.yml

test:
	docker-compose -f local.yml run django pytest



start:
	docker-compose start

stop:
	docker-compose stop

restart:
	docker-compose stop && docker-compose start

shell-django:
	docker exec -ti django bash

log-django:
	docker-compose logs django



collectstatic:
	docker exec django /bin/sh -c "python manage.py collectstatic --noinput"

makemigrations:
	docker exec django /bin/sh -c "python manage.py makemigrations"
