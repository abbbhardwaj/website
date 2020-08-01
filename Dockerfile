From ubuntu

RUN apt-get -y install python3-pip

RUN pip install django

COPY . /opt/app/Website

WORKDIR /opt/app/Website

CMD ["python", "manage.py runserver"]

