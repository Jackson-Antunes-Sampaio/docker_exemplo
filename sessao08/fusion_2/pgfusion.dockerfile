FROM postgres:13.1-alpine
LABEL maintainer "jacksonantunes <jackson.antunes.sampaio@gmail.com>"
ENV POSTGRES_USER=fusion_user
ENV POSTGRES_PASSWORD=fusion_pass
ENV POSTGRES_DB=fusion_app
EXPOSE 5432

# docker build -f pgfusion.dockerfile -t jacksonantunes/pgfusion:v1 .