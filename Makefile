
PS_FORMAT = 'table {{.Names}}\t{{.Status}}\t{{.Size}}'

up:
	@docker-compose up -d

down:
	@docker-compose down --rmi local

plogs:
	@docker logs -ft nginx

gogs-logs:
	@docker logs -ft gogs

gogs-sh:
	@docker exec -it gogs /bin/bash

proxy-sh:
	@docker exec -it nginx /bin/bash

wiki-logs:
	@docker logs -ft wiki-vhost

ps:
	@docker ps --format $(PS_FORMAT)
