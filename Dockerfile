FROM python:3.6-slim

WORKDIR /opt/app


RUN pip3 install django
RUN apt-get update 
RUN apt-get install -y git
RUN git clone https://github.com/kem1101231/Django_Docker.git Docker_Django
RUN python3 Docker_Django/manage.py makemigrations
RUN python3 Docker_Django/manage.py migrate

EXPOSE 8008

CMD ["python", "Docker_Django/manage.py", "runserver", "0.0.0.0:8008"]