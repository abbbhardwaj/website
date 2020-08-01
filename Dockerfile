From python:3

RUN pip install django

COPY . /opt/app

WORKDIR /opt/app/website

CMD python manage.py runserver

