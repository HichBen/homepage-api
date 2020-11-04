FROM python:3.8-slim

WORKDIR /homepage_api

RUN pip install docker

RUN pip install docker-compose

cmd docker-compose up -d