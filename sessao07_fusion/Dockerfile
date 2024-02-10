FROM python:3.9.0-alpine
LABEL maintainer "jacksonantunes <jackson.antunes.sampaio@gmail.com>"
COPY . /var/www
#diretorio de trabalho
WORKDIR /var/www
RUN apk update && apk add zlib-dev jpeg-dev gcc musl-dev && pip install -r requirements.txt && python manage.py migrate
# é executado no diretorio de trabalho
ENTRYPOINT python manage.py runserver 0.0.0.0:8000
EXPOSE 8000
