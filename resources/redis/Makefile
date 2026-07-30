REDIS_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
REDIS_COMPOSE := $(COMPOSE) -f $(REDIS_DIR)docker-compose.yaml

.PHONY: redis-up redis-down redis-stop redis-logs redis-clean-build

redis-up:
	$(REDIS_COMPOSE) up -d

redis-down:
	$(REDIS_COMPOSE) down -v

redis-stop:
	$(REDIS_COMPOSE) stop

redis-logs:
	$(REDIS_COMPOSE) logs -f

redis-clean-build:
	$(REDIS_COMPOSE) down -v --rmi local
	$(REDIS_COMPOSE) pull
	$(REDIS_COMPOSE) up -d
