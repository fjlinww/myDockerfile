FROM mysql

MAINTAINER wdf000

RUN apt-get update && apt-get install -y \
    nano \
    && rm -r /var/lib/apt/lists/*

ENV MYSQL_ROOT_PASSWORD root@123456
ENV MYSQL_ALLOW_EMPTY_PASSWORD no
ENV MYSQL_DATABASE docker_mysql
ENV MYSQL_USER admin
ENV MYSQL_PASSWORD 123456

ENV WORK_PATH /home/mysql

COPY setup.sh /docker-entrypoint-initdb.d
COPY schema.sql $WORK_PATH/

RUN chmod a+x /docker-entrypoint-initdb.d/setup.sh

WORKDIR $WORK_PATH
EXPOSE 3306
