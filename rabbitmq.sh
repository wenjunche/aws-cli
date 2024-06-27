
# https://hub.docker.com/_/rabbitmq
# start rabbitmq with management UI,  then go to http://localhost:15672 and log in with guest/guest
docker run -d -p 15672:15672 --hostname my-rabbit --name some-rabbit rabbitmq:3-management
