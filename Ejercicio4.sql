CREATE TABLE productos(
codigo_producto INT AUTO_INCREMENT PRIMARY KEY,
nombre_producto VARCHAR(100),
precio int);

CREATE TABLE cajeros(
codigo_cajero INT AUTO_INCREMENT PRIMARY KEY,
nom_apels VARCHAR(255));

CREATE TABLE maquinas_registradoras(
codigo_maquina INT AUTO_INCREMENT PRIMARY KEY,
piso INT);

CREATE TABLE venta(
codigo_cajero INT,
codigo_maquina INT,
codigo_producto INT,
PRIMARY KEY (codigo_cajero, codigo_maquina, codigo_producto),
FOREIGN KEY (codigo_cajero)
REFERENCES cajeros (codigo_cajero)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (codigo_maquina)
REFERENCES maquinas_registradoras (codigo_maquina)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (codigo_producto)
REFERENCES productos (codigo_producto)
ON DELETE CASCADE
ON UPDATE CASCADE);

 
INSERT INTO productos (nombre_producto, precio) VALUES
("Televisio",19),
("Iphone13",56),
("PC",7),
("Bombilla",47),
("Plato",55),
("Tenedor",32),
("Enchufe",36),
("Quadro",2),
("Pizzara",53),
("Pantalla",57);

INSERT INTO cajeros (nom_apels) VALUES
("PEPE ROMAN"),
("ALFONSO RAMIREZ"),
("CONFUSIO GARCIA"),
("PAULO ALONSO"),
("MANOLO ROMAN"),
("CARLOS GALLARDO"),
("RAMON GALLEGO"),
("VICTOR ROMAN"),
("FERNANDO FERNANDEZ"),
("ZEUS MAROTO");

INSERT INTO maquinas_registradoras (piso) VALUES
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

INSERT INTO venta (codigo_cajero, codigo_maquina, codigo_producto) VALUES
(1,4,2),
(2,6,4),
(3,8,5),
(4,5,6),
(5,10,3),
(6,2,7),
(7,3,8),
(8,1,10),
(9,7,9),
(10,9,1);






