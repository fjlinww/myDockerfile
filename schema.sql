-- MySql 8
-- Create database
create database `docker_mysql` default character set utf8 collate utf8_general_ci;

use docker_mysql;

-- Create table
DROP TABLE IF EXISTS test;

CREATE TABLE test (id varchar(10) NOT NULL, name varchar(30) NOT NULL)ENGINE=InnoDB AUTO_INCREMENT=1, DEFAULT CHARSET=utf8;

-- Insert data into table
INSERT INTO test (id, name) VALUES ("T17038","William Lin");
