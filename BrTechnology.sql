create database brtechnology;
use brtechnology;

create table users_tbl
(user_id int (11) auto_increment primary key, 
user_firstname varchar (50),
user_lastname varchar (50),
user_email varchar (60),
user_password varbinary (255));