PREFIX=docker-network-test

shell:
	docker exec -it $(PREFIX)-alpine-1 /bin/bash

up: down
	docker-compose up -d --build

down:
	docker-compose down -v
