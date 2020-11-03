FROM python:3.8-slim

WORKDIR /app

COPY ../homepage-api /app/

RUN pip install docker-compose


RUN docker-compose up -d