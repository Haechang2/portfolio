CREATE DATABASE movie;
USE movie;

DROP TABLE memberlist;
CREATE TABLE memberlist(
	id VARCHAR(10),
	pw VARCHAR(100),
    name VARCHAR(10),
    phone VARCHAR(15),
    birth date
);
DESC memberlist;

INSERT INTO memberlist VALUES ('qwer',md5('1234'),'KIM', '010-1234-5678', '1998-01-13');
INSERT INTO memberlist VALUES ('admin',md5('admin'),'admin', null, null);
SELECT * FROM memberlist;

DROP TABLE movielist;
CREATE TABLE movielist(
	hall INT(2),
	movie_title VARCHAR(10),
    start_time INT(4),
    movie_time INT(3),
    movie_img VARCHAR(20)
);
DESC movielist;

INSERT INTO movielist VALUES (1, '어벤져스', 930, 140, 'avengers.jpg');
INSERT INTO movielist VALUES (5, "어벤져스", 1130, 140, 'avengers.jpg');
INSERT INTO movielist VALUES (1, "어벤져스", 1200, 140, 'avengers.jpg');
INSERT INTO movielist VALUES (1, "어벤져스", 1430, 140, 'avengers.jpg');
INSERT INTO movielist VALUES (2, "인터스텔라", 840, 170, 'interstellar.jpg');
INSERT INTO movielist VALUES (2, "인터스텔라", 1140, 170, 'interstellar.jpg');
INSERT INTO movielist VALUES (2, "인터스텔라", 1440, 170, 'interstellar.jpg');
INSERT INTO movielist VALUES (3, "투모로우", 1610, 120, 'tomorrow.jpg');
INSERT INTO movielist VALUES (4, "언터처블", 1100, 110, 'untouchable.jpg');
INSERT INTO movielist VALUES (4, "언터처블", 1300, 110, 'untouchable.jpg');
SELECT * FROM movielist;

DROP TABLE ticketlist;
CREATE TABLE ticketlist(
	hall INT(2),
	movie_title VARCHAR(10),
    start_time INT(4),
    col CHAR,
    num INT(2),
    id VARCHAR(10)
);
DESC ticketlist;

INSERT INTO ticketlist VALUES (4, '언터처블', 1300, 'G', 7, 'qwer');
INSERT INTO ticketlist VALUES (2, '인터스텔라', 1140, 'D', 2, 'qwer');
INSERT INTO ticketlist VALUES (1, '어벤져스', 930, 'A', 8, 'qwer');
INSERT INTO ticketlist VALUES (1, '어벤져스', 930, 'A', 4, 'qwer');
INSERT INTO ticketlist VALUES (1, '어벤져스', 930, 'A', 5, 'qwer');
INSERT INTO ticketlist VALUES (1, '어벤져스', 930, 'G', 5, 'qwer');
INSERT INTO ticketlist VALUES (1, '어벤져스', 930, 'F', 3, 'qwer');
SELECT * FROM ticketlist;