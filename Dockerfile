From python:3

RUN pip install django

RUN mkdir /code

WORKDIR /code

COPY . /code/

RUN ls /code/

CMD ["/code/python manage.py runserver"]