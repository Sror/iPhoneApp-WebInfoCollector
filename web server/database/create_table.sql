
-- VENUE AND EVENTS
CREATE TABLE Venue (
	id  VARCHAR(16) NOT NULL,
	logo VARCHAR(32),
	name VARCHAR(64),
	address VARCHAR(64),
	phone VARCHAR(32),
	email VARCHAR(32),
	web VARCHAR(32),
	photo VARCHAR(32),
	description VARCHAR(1000),
	primary KEY (id)
);


CREATE TABLE Events (
	id  VARCHAR(16) NOT NULL,
	date DATE,
	title VARCHAR(64),
	description VARCHAR(1000),
	venue_id INT(12),
	photo VARCHAR(16),
	primary KEY (id)
);

-- GENRE RELATED
CREATE TABLE Genres (
	id  VARCHAR(16) NOT NULL,
	genre VARCHAR(100),
	description VARCHAR(100),
	photo VARCHAR(100),
	primary KEY (id)
);

CREATE TABlE SubGenres (
	id  VARCHAR(16) NOT NULL,
	genre_id  VARCHAR(16) NOT NULL,
	subgenre VARCHAR(100),
	description VARCHAR(100),
	photo VARCHAR(100),
	primary KEY (id)
);

CREATE TABLE Genres_Events (
	subgenre_id  VARCHAR(16) NOT NULL,
	event_id VARCHAR(16) NOT NULL
);

--  REGISTER PROMOTER AND CLIENT
create table Promoters(
  id  varchar (16) not null auto_increment unique,
  username varchar (32) unique primary key ,
  password varchar (16),
  first_name varchar (32),
  last_name varchar (32),
  phone varchar (16),
  email varchar (32),
  address varchar (32)
);
