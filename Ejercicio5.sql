CREATE TABLE facultad(
codigo_facultad INT AUTO_INCREMENT PRIMARY KEY,
nombre_facultad VARCHAR(100));

CREATE TABLE equipos(
numero_serie CHAR(4) NOT NULL PRIMARY KEY,
nombre_equipo VARCHAR(100),
facultad INT,
FOREIGN KEY (facultad)
REFERENCES facultad (codigo_facultad)
ON DELETE SET NULL
ON UPDATE CASCADE);

CREATE TABLE investigadores(
dni_inv varchar(8) NOT NULL PRIMARY KEY,
nom_apels VARCHAR(255),
facultad INT,
FOREIGN KEY (facultad)
REFERENCES facultad (codigo_facultad)
ON DELETE SET NULL
ON UPDATE CASCADE);

CREATE TABLE reserva(
dni VARCHAR(8),
numero_serie CHAR(4),
comienzo DATETIME,
fin DATETIME,
PRIMARY KEY (dni, numero_serie),
FOREIGN KEY (dni)
REFERENCES investigadores (dni_inv)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (numero_serie)
REFERENCES equipos (numero_serie)
ON DELETE CASCADE
ON UPDATE CASCADE);

INSERT INTO facultad (nombre_facultad) VALUES
("Facultad de Arquitectura"),
("Facultad de Artes y Diseño"),
("Facultad de Ciencias"),
("Facultad de Ciencias Políticas y Sociales"),
("Facultad de Contaduría y Administración"),
("Facultad de Derecho"),
("Facultad de Economía"),
("Facultad de Estudios Superiores (FES) Acatlán"),
("Facultad de Deporte"),
("Facultad de Biología");

INSERT INTO equipos (numero_serie, nombre_equipo, facultad) VALUE 
(222,"PC1",1),
(333,"PC2",5),
(444,"PC3",7),
(555,"PC4",10),
(666,"Impresora1",9),
(777,"Impresora2",8),
(888,"Impresora3",6),
(000,"Fotocopiadora1",4),
(999,"Fotocopiadora2",3),
(111,"Fotocopiadora3",2);

INSERT INTO investigadores (dni_inv, nom_apels, facultad) VALUE
("1111111A","PEPE ROMAN",1),
("2222222A","ALFONSO RAMIREZ",2),
("3333333A","CONFUSIO GARCIA",3),
("4444444A","PAULO ALONSO",4),
("5555555A","MANOLO ROMAN",5),
("6666666A","CARLOS GALLARDO",6),
("7777777A","RAMON GALLEGO",7),
("8888888A","VICTOR ROMAN",8),
("9999999A","FERNANDO FERNANDEZ",9),
("1010101A","ZEUS MAROTO",10);

INSERT INTO reserva (dni, numero_serie, comienzo, fin) VALUES
("1111111A",111,'2022-1-1 00:00:00','2022-1-25 23:59:59' ),
("2222222A",222,'2022-2-1 00:00:00','2022-2-25 23:59:59'),
("3333333A",333,'2022-3-1 00:00:00','2022-3-25 23:59:59'),
("4444444A",444,'2022-4-1 00:00:00','2022-4-25 23:59:59'),
("5555555A",555,'2022-5-1 00:00:00','2022-5-25 23:59:59'),
("6666666A",666,'2022-6-1 00:00:00','2022-6-25 23:59:59'),
("7777777A",777,'2022-7-1 00:00:00','2022-7-25 23:59:59'),
("8888888A",888,'2022-8-1 00:00:00','2022-8-25 23:59:59'),
("9999999A",999,'2022-9-1 00:00:00','2022-9-25 23:59:59'),
("1010101A",000,'2022-10-1 00:00:00','2022-10-25 23:59:59');
