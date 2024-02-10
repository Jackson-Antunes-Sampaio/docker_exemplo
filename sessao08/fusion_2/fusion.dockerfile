FROM python:3.9.0-alpine
LABEL maintainer "jacksonantunes <jackson.antunes.sampaio@gmail.com>"
COPY . /var/www
WORKDIR /var/www
RUN apk update && apk add zlib-dev jpeg-dev gcc musl-dev python3-dev postgresql-dev && pip install -r requirements.txt && python manage.py migrate
ENTRYPOINT python manage.py runserver 0.0.0.0:8000
EXPOSE 8000

# docker build -f fusion.dockerfile -t jacksonantunes/fusion:v1 .