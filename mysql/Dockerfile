FROM mysql

MAINTAINER wdf000

RUN apt-get update && apt-get install -y \
    nano \
    net-tools \
    iputils-ping \
    && rm -r /var/lib/apt/lists/*

ENV MYSQL_ROOT_PASSWORD root@123456
ENV MYSQL_ALLOW_EMPTY_PASSWORD no
ENV MYSQL_DATABASE docker_mysql
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD 123456

ENV FILE_0 schema.sql
# ENV FILE_1 privileges.sql

ENV WORK_PATH /home/mysql

COPY setup.sh /docker-entrypoint-initdb.d
COPY ./$FILE_0 $WORK_PATH/
#COPY ./$FILE_1 $WORK_PATH/

RUN chmod a+x /docker-entrypoint-initdb.d/setup.sh

EXPOSE 3306
