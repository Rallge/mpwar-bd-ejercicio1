create database if not exists library; 

use library;

create table if not exists book (id INT NOT NULL PRIMARY KEY,
 isbn VARCHAR(13),
 title VARCHAR(255),
 author INT,
 editorial INT,
 year SMALLINT(6),
 subject INT,
 FOREIGN KEY (author) REFERENCES book(id),
 FOREIGN KEY (editorial) REFERENCES editorial(id),
 FOREIGN KEY (subject) REFERENCES subject(id)
 );

 create table if not exists author (id INT NOT NULL PRIMARY KEY,
 name VARCHAR(255)); 

 create table if not exists editorial (id INT NOT NULL PRIMARY KEY,
 name VARCHAR(255));

 create table if not exists subject (id INT NOT NULL PRIMARY KEY,
 name VARCHAR(255));

 SHOW FULL TABLES FROM library;
