FROM python:3.8-slim

WORKDIR /homepage_api

COPY ./docker-compose.yml /homepage_api/docker-compose.yml
COPY ./homepage-service /homepage_api/homepage-service
COPY ./nginx_config.conf /homepage_api/nginx_config.conf

RUN pip install docker

RUN pip install docker-compose

RUN curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN chmod +x /usr/local/bin/docker-compose
RUN service docker start

RUN docker-compose up -d