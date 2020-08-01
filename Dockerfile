From python:3

RUN pip install django

COPY website/ ./opt/app/website

WORKDIR /opt/app/website

CMD python manage.py runserver

