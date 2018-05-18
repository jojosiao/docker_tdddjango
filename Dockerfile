FROM debian:latest

RUN apt-get update && apt-get upgrade -y 

RUN apt-get install git curl python3 -y

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python3 get-pip.py

COPY requirements.txt ./

RUN pip install -r requirements.txt

WORKDIR tdddjango

RUN django-admin startproject tdddjango .

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000 
