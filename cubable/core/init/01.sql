create database if not exists `wgc_deploy`;
create database if not exists `admin_panel`;
create database if not exists `billing`;

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
flush privileges;
