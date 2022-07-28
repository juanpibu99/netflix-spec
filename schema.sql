DROP TABLE title_category;
DROP TABLE title_director;
DROP TABLE title_actor;
DROP TABLE category;
DROP TABLE director;
DROP TABLE actor;
DROP TABLE title;

CREATE TABLE title (
  id int(11) NOT NULL AUTO_INCREMENT,
  date_added varchar(255) DEFAULT NULL,
  description varchar(4095) DEFAULT NULL,
  duration varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  rating varchar(255) DEFAULT NULL,
  release_year varchar(255) DEFAULT NULL,
  num_ratings int(11) DEFAULT NULL,
  user_rating float DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE actor (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE director (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE category (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE title_actor (
  title_id int(11) NOT NULL REFERENCES title(id),
  actor_id int(11) NOT NULL REFERENCES actor(id),
  PRIMARY KEY (title_id,actor_id)
);

CREATE TABLE title_director (
  title_id int(11) NOT NULL REFERENCES title(id),
  director_id int(11) NOT NULL REFERENCES director(id),
  PRIMARY KEY (title_id,director_id)
);

CREATE TABLE title_category (
  title_id int(11) NOT NULL REFERENCES title(id),
  category_id int(11) NOT NULL REFERENCES category(id),
  PRIMARY KEY (title_id,category_id)
);
