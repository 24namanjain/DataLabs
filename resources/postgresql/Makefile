POSTGRES_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
COMPOSE := docker compose -f $(POSTGRES_DIR)docker-compose.yaml

.PHONY: postgres-up postgres-down postgres-stop postgres-logs postgres-clean-build

postgres-up:
	$(COMPOSE) up -d

postgres-down:
	$(COMPOSE) down -v

postgres-stop:
	$(COMPOSE) stop

postgres-logs:
	$(COMPOSE) logs -f

postgres-clean-build:
	$(COMPOSE) down -v --rmi local
	$(COMPOSE) pull
	$(COMPOSE) up -d
