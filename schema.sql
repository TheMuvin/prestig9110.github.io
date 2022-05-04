DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS markers;
DROP TABLE IF EXISTS territories;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  tag VARCHAR(1000),
  type INT NOT NULL,
  age VARCHAR(10),
  from_about TEXT,
  you_about TEXT,
  status INT NOT NULL,
  user_id VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE markers (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_type VARCHAR(100) NOT NULL,
  x INT NOT NULL,
  y INT NOT NULL,
  z INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  user VARCHAR(100) NOT NULL,
  server VARCHAR(100) NOT NULL,
  flag INT NOT NULL
);

CREATE TABLE territories (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  xStart INT NOT NULL,
  zStart INT NOT NULL,
  xStop INT NOT NULL,
  zStop INT NOT NULL,
  name VARCHAR(300) NOT NULL UNIQUE,
  user VARCHAR(100) NOT NULL
);

CREATE TABLE farm_manager (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  x INT NOT NULL,
  y INT NOT NULL,
  z INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  server VARCHAR(100) NOT NULL
);