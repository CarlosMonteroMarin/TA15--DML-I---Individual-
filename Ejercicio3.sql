CREATE TABLE cientificos(
dni VARCHAR(8) NOT NULL PRIMARY KEY,
nom_apels VARCHAR(255));

CREATE TABLE proyecto(
id_proyecto CHAR(4) NOT NULL PRIMARY KEY,
nombre_proyecto VARCHAR(255),
horas int);

CREATE TABLE asignado_a(
cientifico varchar(8),
proyecto char(4),
PRIMARY KEY (cientifico, proyecto),
FOREIGN KEY (cientifico)
REFERENCES cientificos (dni)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (proyecto)
REFERENCES proyecto (id_proyecto)
ON DELETE CASCADE
ON UPDATE CASCADE);


INSERT INTO cientificos (dni, nom_apels) VALUES
("1111111A","PEPE ROMAN"),
("2222222A","ALFONSO RAMIREZ"),
("3333333A","CONFUSIO GARCIA"),
("4444444A","PAULO ALONSO"),
("5555555A","MANOLO ROMAN"),
("6666666A","CARLOS GALLARDO"),
("7777777A","RAMON GALLEGO"),
("8888888A","VICTOR ROMAN"),
("9999999A","FERNANDO FERNANDEZ"),
("1010101A","ZEUS MAROTO");


INSERT INTO proyecto (id_proyecto, nombre_proyecto, horas) VALUES
(222,"Hombre a la luna",19),
(333,"Lucha contra el alzheimer",56),
(444,"Materia oscura",7),
(555,"Energia renovable",47),
(666,"Apolo13",55),
(777,"CARLOS GALLARDO",32),
(888,"El coche electrico",36),
(000,"Ingravidez",2),
(999,"Viajes en el tiempo",53),
(111,"Reduccion de emisiones",57);

INSERT INTO asignado_a (cientifico, proyecto) VALUES
("1111111A",222),
("2222222A",444),
("3333333A",777),
("4444444A",000),
("5555555A",333),
("6666666A",111),
("7777777A",555),
("8888888A",888),
("9999999A",999),
("1010101A",666);
