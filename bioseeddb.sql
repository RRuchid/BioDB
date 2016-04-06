DROP DATABASE IF EXISTS bioseeddb;
CREATE DATABASE  bioseeddb;
use bioseeddb;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  user_id serial NOT NULL PRIMARY KEY,
  username varchar(30)  NOT NULL default 'guest',
  password varchar(16) NOT NULL default 'password'
  );
  
DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  user_id serial NOT NULL PRIMARY KEY,
  role int
  );
  
DROP TABLE IF EXISTS role;
CREATE TABLE role (
  admin int,
  privileged int,
  base int
  );
  
DROP TABLE IF EXISTS contributor;
CREATE TABLE contributor (
  contributor_id varchar(45) PRIMARY KEY,
  phone int,
  address varchar(100),
  name varchar(45),
  email varchar(45)
  );
  
DROP TABLE IF EXISTS seed_stock;
CREATE TABLE seed_stock (
  stock_id int NOT NULL PRIMARY KEY,
  cross_id varchar(45) NOT NULL default '',
  genotype varchar(45) NOT NULL default '',
  generation varchar(5) NOT NULL default '',
  female_parent varchar(45) NOT NULL default '',
  male_parent varchar(45) NOT NULL default '',
  species varchar(30) NOT NULL default '',
  date_collected DATE,
  location varchar(45),
  contributor_id varchar(45),
  antibiotics_resistance varchar(10),
  oligo_1 varchar(20),
  oligo_2 varchar(20),
  notes varchar(80)
  );