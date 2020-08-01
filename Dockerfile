From ubuntu

RUN apt install python:3

RUN pip install django

COPY . /opt/app/Website

WORKDIR /opt/app/Website

CMD ["python", "manage.py runserver"]

