-- MySql 8
-- Create database
create database `docker_mysql` default character set utf8 collate utf8_general_ci;

use docker_mysql;

-- Create table
DROP TABLE IF EXISTS t_staff;
CREATE TABLE t_staff (
staff_id varchar(10) NOT NULL, 
staff_name varchar(30) NOT NULL,
sex char(1)NOT NULL, 
primary key(staff_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS t_dept;
CREATE TABLE t_dept (
dept_id varchar(10) NOT NULL, 
dept_name varchar(30) NOT NULL,
primary key(dept_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS t_work;
CREATE TABLE t_work (
id int primary key AUTO_INCREMENT, 
staff_id varchar(30) NOT NULL,
dept_id varchar(10) NOT NULL, 
foreign key(staff_id) references t_staff(staff_id),
foreign key(dept_id) references t_dept(dept_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Insert data into table
INSERT INTO t_staff (staff_id, staff_name, sex) VALUES ("T2017003","William Lin",'M');
INSERT INTO t_staff (staff_id, staff_name, sex) VALUES ("T2017033","William Lam",'M');
INSERT INTO t_dept (dept_id, dept_name) VALUES ("03","computer science");
INSERT INTO t_dept (dept_id, dept_name) VALUES ("22","software");
INSERT INTO t_work (staff_id, dept_id) VALUES ("T2017003","03");
INSERT INTO t_work (staff_id, dept_id) VALUES ("T2017033","22");
