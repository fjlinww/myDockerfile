FROM httpd:2.4
MAINTAINER wdf000
RUN apt-get update && apt-get install nano && rm -r /var/lib/apt/lists/*
COPY ./public-html/ /usr/local/apache2/htdocs/
# conf Listen 8080
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 8080
WORKDIR /usr/local/apache2/htdocs
