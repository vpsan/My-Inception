up:
	docker-compose -f ./srcs/docker-compose.yaml up
down:
	docker-compose -f ./srcs/docker-compose.yaml down
rebuild:
	docker-compose -f ./srcs/docker-compose.yaml up --build
stop:
	docker-compose -f ./srcs/docker-compose.yaml stop
clean:
	docker stop $$(docker ps -qa);\
	docker rm $$(docker ps -qa);\
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	docker network rm $$(docker network ls -q)
