DEV_COMPOSE_PATH=compose.dev.yaml

docker-up:
	docker compose -f $(DEV_COMPOSE_PATH) up

docker-down:
	docker compose -f $(DEV_COMPOSE_PATH) down -v

docker-rebuild:
	docker compose -f $(DEV_COMPOSE_PATH) build --no-cache

docker-clean-build: docker-down docker-rebuild docker-up