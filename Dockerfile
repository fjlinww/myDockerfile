FROM mysql

MAINTAINER wdf000

RUN apt-get update && apt-get install -y \
    nano \
    net-tools \
    iputils-ping \
    && rm -r /var/lib/apt/lists/*

ENV MYSQL_ROOT_PASSWORD root@123456
ENV MYSQL_DATABASE TestDB
ENV MYSQL_USER wdf000
ENV MYSQL_PASSWORD 123456
ENV MYSQL_ALLOW_EMPTY_PASSWORD no

EXPOSE 3306
