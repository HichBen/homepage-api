FROM python:3.8-slim

WORKDIR /app

COPY ./docker-compose.yml /app/docker-compose.yml

RUN pip install docker-compose


RUN docker-compose up -d