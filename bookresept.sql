DROP DATABASE IF EXISTS bookresept;
CREATE DATABASE bookresept CHAR SET utf8mb4;
USE bookresept;
CREATE TABLE resept (
  id int(11) NOT NULL AUTO_INCREMENT,
  name_resept varchar(50) NOT NULL,
  ingredients varchar(500) NOT NULL,
  cooking varchar(1000) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
