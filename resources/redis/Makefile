REDIS_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
COMPOSE := docker compose -f $(REDIS_DIR)docker-compose.yaml

.PHONY: redis-up redis-down redis-stop redis-logs redis-clean-build

redis-up:
	$(COMPOSE) up -d

redis-down:
	$(COMPOSE) down -v

redis-stop:
	$(COMPOSE) stop

redis-logs:
	$(COMPOSE) logs -f

redis-clean-build:
	$(COMPOSE) down -v --rmi local
	$(COMPOSE) pull
	$(COMPOSE) up -d
