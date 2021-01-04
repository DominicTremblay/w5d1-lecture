ALTER SEQUENCE platforms_id_seq RESTART WITH 1;
ALTER SEQUENCE games_id_seq RESTART WITH 1;


INSERT INTO platforms(name, developer, release_date) VALUES ('X Box One', 'Microsoft', '2013-11-22');
INSERT INTO platforms(name, developer, release_date) VALUES ('PlayStation 4', 'Sony', '2013-11-15');
INSERT INTO platforms(name, developer, release_date) VALUES ('Switch', 'Nintendo', '2017-03-03');

INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('Halo Wars 2','Real-time strategy game in which players build and command military units in order to defeat opponents and complete combat objectives.','2017-02-21', 'Teen','Real-time strategy', 1);
INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('Forza Motorsport 7','racing game in which players can drive a variety of realistic cars around international tracks. ','2017-10-03', 'Everyone','Racing game', 1);
INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('Mario Kart 8 Deluxe','Expanded version of the Wii U racing game, Mario Kart 8, for the Nintendo Switch.','2017-04-28', 'Everyone', 'Racing game', 2);
INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('Super Mario Odyssey','Super Mario Odyssey is a platform game in which players control Mario as he travels across many different worlds, known as "Kingdoms", on the hat-shaped ship Odyssey, to rescue Princess Peach from Bowser, who plans to forcibly marry her.','2017-10-27', 'Everyone', 'Action-adventure',2);
INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('GT Sport', 'One of Gran Turismo Sport s main focuses is competitive online racing, supported by the international governing body of motorsport, the Federation Internationale de l Automobile (FIA), and serving as the platform for the FIA-Certified Gran Turismo Championships.', '2017-10-17','Everyone', 'Racing game', 3);
INSERT INTO games(title, description, release_date, rating, genre, platform_id) VALUES ('Street Fighter 5', 'Street Fighter V features a side-scrolling fighting gameplay system. The game also introduces the "V-Gauge", which builds as the player receives attacks and adds three new skills.','2016-02-16', 'Teen', 'Fighting game', 3);
INSERT INTO games(title, release_date, rating, genre, platform_id) VALUES ('Super LHL','2020-07-20','Everyone','Fighting game', 3);

