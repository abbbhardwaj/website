From python:3

RUN pip install django

WORKDIR /opt/app

ADD . /opt/app

RUN ls /

CMD python manage.py runserver
