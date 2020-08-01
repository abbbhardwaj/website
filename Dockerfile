From python:3

RUN pip install django

COPY . /opt/app/website

WORKDIR /opt/app/website

RUN ls /opt/app

CMD ["/opt/app/website/python", manage.py runserver"]