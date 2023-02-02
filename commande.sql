CREATE DATABASE cinema;

USE cinema;

CREATE TABLE Cinema (
id_cinema int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nom_cinema varchar(255) NOT NULL
);

CREATE TABLE Film (
id_film int PRIMARY KEY NOT NULL AUTO_INCREMENT,
titre varchar(255) NOT NULL
);

CREATE TABLE Salle (
id_salle int PRIMARY KEY NOT NULL AUTO_INCREMENT,
places int NOT NULL,
cinema_id int NOT NULL,
FOREIGN KEY (cinema_id) REFERENCES Cinema (id_cinema)
);



CREATE TABLE Tarif (
id_tarif int PRIMARY KEY NOT NULL AUTO_INCREMENT,
type_tarif varchar(255) NOT NULL,
prix float NOT NULL
);

CREATE TABLE Heure (
id_heure int PRIMARY KEY NOT NULL AUTO_INCREMENT,
date_heure datetime NOT NULL
);


CREATE TABLE Seance (
id_seance int PRIMARY KEY NOT NULL AUTO_INCREMENT,
film_id int NOT NULL,
cinema_id int NOT NULL,
salle_id int NOT NULL,
heure_id int NOT NULL,
FOREIGN KEY (film_id) REFERENCES Film (id_film),
FOREIGN KEY (cinema_id) REFERENCES Cinema(id_cinema),
FOREIGN KEY (salle_id) REFERENCES Salle (id_salle),
FOREIGN KEY (heure_id) REFERENCES Heure (id_heure)
);


CREATE TABLE Reservation (
id_reservation int PRIMARY KEY NOT NULL AUTO_INCREMENT,
seance_id int NOT NULL,
tarif_id int NOT NULL,
FOREIGN KEY (seance_id) REFERENCES Seance (id_seance),
FOREIGN KEY (tarif_id) REFERENCES Tarif (id_tarif)
);


INSERT INTO Cinema (nom_cinema) 
VALUES 
('La grande rue'), 
('La petite rue'),
("L'obelisque");

INSERT INTO Film (titre) 
VALUES 
('Le grand bleu'),
('Titanic'),
('Star Wars'),
('Le seigneur des anneaux'),
('Avatar');

INSERT INTO Salle (places, cinema_id)
VALUES 
(200, 1),
(200, 2),
(200, 3),
(100, 1),
(100, 2),
(100, 3),
(100, 1),
(100, 2),
(100, 3);

INSERT INTO Heure (date_heure)
VALUES
("2023-06-01 10:00:00"),
("2023-06-01 14:00:00"),
("2023-06-01 18:00:00"),
("2023-06-01 21:00:00"),
("2023-06-02 10:00:00"),
("2023-06-02 14:00:00"),
("2023-06-02 18:00:00"),
("2023-06-02 21:00:00"),
("2023-06-03 10:00:00"),
("2023-06-03 14:00:00"),
("2023-06-03 18:00:00"),
("2023-06-03 21:00:00"),
("2023-06-04 10:00:00"),
("2023-06-04 14:00:00"),
("2023-06-04 18:00:00"),
("2023-06-04 21:00:00"),
("2023-06-05 10:00:00"),
("2023-06-05 14:00:00"),
("2023-06-05 18:00:00"),
("2023-06-05 21:00:00");

INSERT INTO Seance (film_id, cinema_id, salle_id, heure_id)
VALUES
(1, 1, 1, 1),
(1, 1, 1, 2),
(1, 1, 1, 3),
(1, 1, 1, 4),
(1, 1, 1, 5),
(1, 1, 1, 6),
(1, 1, 1, 7),
(1, 1, 1, 8),
(1, 1, 1, 9),
(1, 1, 1, 10),
(2, 1, 2, 1),
(2, 1, 2, 2),
(2, 1, 2, 3),
(2, 1, 2, 4),
(2, 1, 2, 5),
(4, 3, 3, 1),
(4, 3, 3, 2),
(4, 3, 3, 3);

INSERT INTO Tarif (type_tarif, prix)
VALUES 
("Plein tarif", 9.20),
("Étudiant", 7.60),
("Moins de 14 ans", 5.90);

INSERT INTO Reservation (seance_id, tarif_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 2),
(9, 2),
(10, 1),
(11, 1),
(12, 2),
(13, 2),
(14, 2),
(15, 3),
(16, 3),
(17, 3),
(18, 3);