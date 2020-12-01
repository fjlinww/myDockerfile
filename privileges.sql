-- Mysql 8
use mysql;

select host, user from user;
-- First create
create user test01 identified by '123456';
-- And then grant
grant all privileges on docker_mysql.* to test01@'%' with grant option;
-- Don't forget
flush privileges;
