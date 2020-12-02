-- Mysql 8
use mysql;

select host, user from user;
-- First create
create user admin identified by '123456';
-- And then grant
grant all privileges on docker_mysql.* to admin@'%' with grant option;
-- Don't forget
flush privileges;
