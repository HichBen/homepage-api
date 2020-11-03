FROM python:3.8-slim

ADD ./* $HOME/src/

RUN pip install docker-compose


RUN docker-compose up -d