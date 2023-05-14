create database brtechnology;
use brtechnology;

create table users_tbl
(user_id int (11) auto_increment primary key, 
user_firstname varchar (50),
user_lastname varchar (50),
user_email varchar (60),
user_password varbinary (255));

INSERT INTO brtechnology.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com', AES_ENCRYPT('password', '$2a$12$hC77LspyLSLs9L1EGO2G3ODPNocQhIjgWlNznT//vBOz85YaOQbJu'));

SELECT *,CAST(AES_DECRYPT(user_password, '$2a$12$hC77LspyLSLs9L1EGO2G3ODPNocQhIjgWlNznT//vBOz85YaOQbJu') AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 2;

