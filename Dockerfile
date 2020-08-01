From ubuntu

RUN  apt-get update
RUN apt-get -y install python

RUN pip install django

COPY . /opt/app/Website

WORKDIR /opt/app/Website

CMD ["python", "manage.py runserver"]

