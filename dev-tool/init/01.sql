create database if not exists `co`;
create database if not exists `dh`;

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
flush privileges;
