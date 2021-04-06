FROM nginx

MAINTAINER wdf000

RUN apt-get update && apt-get install -y \
    nano \
    && rm -r /var/lib/apt/lists/*

EXPOSE 8080

WORKDIR /myWebApp

COPY /conf/default.conf /etc/nginx/conf.d/default.conf
COPY /webapp /myWebApp
