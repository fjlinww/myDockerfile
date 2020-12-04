FROM nginx

MAINTAINER wdf000

COPY /conf/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

WORKDIR /myWebApp

COPY /webapp /myWebApp
