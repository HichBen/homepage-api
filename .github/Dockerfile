FROM python:3.8-slim

WORKDIR /homepage_api

COPY ./docker-compose.yml /homepage_api/docker-compose.yml
COPY ./homepage-service /homepage_api/homepage-service
COPY ./nginx_config.conf /homepage_api/nginx_config.conf

RUN pip install docker

RUN pip install docker-compose

RUN docker start

RUN docker-compose up -d