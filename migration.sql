USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username  VARCHAR(100) NOT NULL,
  password  VARCHAR(100) NOT NULL,
  email     VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id            INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id       INT UNSIGNED NOT NULL,
  title         VARCHAR(250) NOT NULL,
  description   TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) references users (id)
    ON DELETE CASCADE
);