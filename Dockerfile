From python:3

RUN pip install django

WORKDIR /opt/app

ADD . /opt/app

WORKDIR /opt/app/website

RUN ls /

CMD python manage.py runserver
