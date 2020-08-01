From ubuntu

RUN apt-get clean && apt-get update

RUN apt-get -y install python3

RUN pip install django

COPY . /opt/app/Website

WORKDIR /opt/app/Website

CMD ["python", "manage.py runserver"]

