POSTGRES_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
POSTGRES_COMPOSE := $(COMPOSE) -f $(POSTGRES_DIR)docker-compose.yaml

.PHONY: postgres-up postgres-down postgres-stop postgres-logs postgres-clean-build

postgres-up:
	$(POSTGRES_COMPOSE) up -d

postgres-down:
	$(POSTGRES_COMPOSE) down -v

postgres-stop:
	$(POSTGRES_COMPOSE) stop

postgres-logs:
	$(POSTGRES_COMPOSE) logs -f

postgres-clean-build:
	$(POSTGRES_COMPOSE) down -v --rmi local
	$(POSTGRES_COMPOSE) pull
	$(POSTGRES_COMPOSE) up -d
