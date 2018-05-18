# docker_tdddjango
my docker setup for a fresh django app

I refer to here when I get lost when doing a dockerized web application.

first,

docker build -t <tagname> .

and then, 

docker container run -d -p 8000:8000 --name tdddjango tdddjango

