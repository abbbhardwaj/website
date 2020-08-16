From python:3

RUN pip install django

RUN pip install gTTS && pip install playsound

RUN mkdir /code

WORKDIR /code

COPY . /code/

RUN ls /code/

WORKDIR /code/Website

RUN python3.8 manage.py migrate

CMD python manage.py runserver