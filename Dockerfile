From python:3

RUN pip install django

COPY . /opt/app/

CMD python manage.py runserver

