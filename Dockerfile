From python:3

RUN pip install django

RUN mkdir /code

WORKDIR /code

COPY . /code/

RUN ls /code/

WORKDIR /code/Website

CMD python manage.py runserver