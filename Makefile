.PHONY: up down migrate test lint shell

up:
	docker compose up --build

down:
	docker compose down

migrate:
	docker compose exec web python manage.py migrate

test:
	docker compose exec web pytest

lint:
	docker compose exec web ruff check .
	docker compose exec web ruff format --check .

shell:
	docker compose exec web bash
