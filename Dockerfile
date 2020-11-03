FROM python:3.8-slim

RUN docker-compose up -d

COPY . /app/