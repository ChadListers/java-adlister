# CREATE USER 'chadlister'@'localhost' IDENTIFIED BY 'codeup-1';
#
# GRANT ALL ON *.* TO 'chadlister'@'localhost';

DROP DATABASE IF EXISTS chadlister_db;

CREATE DATABASE IF NOT EXISTS chadlister_db;

USE chadlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS catagories;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL,
    phone_number CHAR(20),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    is_admin TINYINT DEFAULT '0',
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(150) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED DEFAULT NULL,
    category_id INT UNSIGNED DEFAULT NULL,
    title VARCHAR(250) NOT NULL,
    description TEXT NOT NULL,
    price INT UNSIGNED NOT NULL,
    image_url VARCHAR(250),
    views INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);


CREATE TABLE IF NOT EXISTS ads (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   user_id INT UNSIGNED DEFAULT NULL,
   category_id INT UNSIGNED DEFAULT NULL,
   title VARCHAR(250) NOT NULL,
   description TEXT NOT NULL,
   price INT UNSIGNED NOT NULL,
   image_url VARCHAR(250),
   PRIMARY KEY (id),
   FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
   FOREIGN KEY (category_id) REFERENCES category (id)
);


ALTER TABLE users
ADD first_name VARCHAR(100);

ALTER TABLE users
ADD last_name VARCHAR(100);