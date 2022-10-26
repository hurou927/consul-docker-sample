# build:
# 	docker build -t consul-docker-test  .

# run:
# 	docker run -it consul-docker-test

run:
	docker compose up --detach --build

kill:
	docker compose kill

ssh:
	docker compose exec server0 /bin/bash

sshprom:
	docker compose exec prometheus0 /bin/bash

open:
	xdg-open http://127.0.0.1:8500
	xdg-open http://127.0.0.1:19090
