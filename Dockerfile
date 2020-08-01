From Ubuntu

RUN apt-get update && apt-get install python

RUN pip install django

COPY . /opt/app/Website

WORKDIR /opt/app/Website

CMD ["python", "manage.py runserver"]

