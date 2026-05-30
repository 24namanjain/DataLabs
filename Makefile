# Master Makefile — orchestrates independent database stacks under resources/.
# Add future databases with: include <db>/Makefile and wire combined targets below.

.DEFAULT_GOAL := help

include resources/postgresql/Makefile
include resources/redis/Makefile

.PHONY: help up down stop logs clean-build

help:
	@echo "Usage:"
	@echo ""
	@echo "  PostgreSQL commands:"
	@echo "    make postgres-up"
	@echo "    make postgres-down"
	@echo "    make postgres-stop"
	@echo "    make postgres-logs"
	@echo "    make postgres-clean-build"
	@echo ""
	@echo "  Redis commands:"
	@echo "    make redis-up"
	@echo "    make redis-down"
	@echo "    make redis-stop"
	@echo "    make redis-logs"
	@echo "    make redis-clean-build"
	@echo ""
	@echo "  Combined commands:"
	@echo "    make up"
	@echo "    make down"
	@echo "    make stop"
	@echo "    make logs"
	@echo "    make clean-build"

up: postgres-up redis-up

down: postgres-down redis-down

stop: postgres-stop redis-stop

logs:
	docker compose -f postgresql/docker-compose.yaml logs -f &
	docker compose -f redis/docker-compose.yaml logs -f

clean-build: postgres-clean-build redis-clean-build