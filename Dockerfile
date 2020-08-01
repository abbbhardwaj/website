From python:3

RUN pip install django

WORKDIR /opt/app

COPY . /website

RUN ls /

ENTRYPOINT ["python3","manage.py runserver"]

