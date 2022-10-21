CREATE TABLE despachos(
numero_despacho int auto_increment primary key,
capacidad int);

CREATE TABLE directores(
dni varchar(8) not null primary key,
nom_apels varchar(255),
despacho int,
dni_jefe varchar(8),
FOREIGN KEY (dni_jefe)
REFERENCES directores (dni)
ON DELETE SET NULL
ON UPDATE CASCADE,
FOREIGN KEY (despacho)
REFERENCES despachos (numero_despacho)
ON DELETE SET NULL
ON UPDATE CASCADE);

INSERT INTO despachos (capacidad) VALUES
(2),
(5),
(7),
(4),
(5),
(3),
(2),
(7),
(4),
(3);

SELECT * FROM despachos;

INSERT INTO directores (dni, nom_apels, despacho) VALUES
("1111111A","PEPE ROMAN",1),
("2222222A","ALFONSO RAMIREZ",6),
("3333333A","CONFUSIO GARCIA",7),
("4444444A","PAULO ALONSO",7),
("5555555A","MANOLO ROMAN",1),
("6666666A","CARLOS GALLARDO",3),
("7777777A","RAMON GALLEGO",3),
("8888888A","VICTOR ROMAN",2),
("9999999A","FERNANDO FERNANDEZ",5),
("1010101A","ZEUS MAROTO",5);

SELECT * FROM directores;
