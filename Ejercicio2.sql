CREATE TABLE piezas(
codigo_pieza INT AUTO_INCREMENT PRIMARY KEY,
nombre_pieza VARCHAR(100));

CREATE TABLE proveedores(
id_proveedor CHAR(4) PRIMARY KEY,
nombre_proveedor VARCHAR(100));

CREATE TABLE suministra(
codigo_pieza INT,
id_proveedor CHAR(4),
precio INT,
PRIMARY KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza)
REFERENCES piezas (codigo_pieza)
ON DELETE CASCADE
ON UPDATE CASCADE,
FOREIGN KEY (id_proveedor)
REFERENCES proveedores (id_proveedor)
ON DELETE CASCADE
ON UPDATE CASCADE);

INSERT INTO piezas (nombre_pieza) VALUES
("Tuerca"),
("Tornillo"),
("Placa"),
("Clavo"),
("Arandela"),
("Lamina"),
("Taco"),
("Plancha"),
("Fullola"),
("Perno");

SELECT * FROM piezas;

INSERT INTO proveedores (id_proveedor,nombre_proveedor) VALUES
(110,"BOSH"),
(219,"LG"),
(318,"TESLA"),
(417,"BALAY"),
(516,"SAMSUNG"),
(615,"XIAOMI"),
(714,"GRUPO BAG"),
(813,"MAHLE"),
(912,"RIDEX"),
(011,"AUTODOC");

SELECT * FROM proveedores;

INSERT INTO suministra (codigo_pieza,id_proveedor,precio) VALUES
(1,110,4),
(2,318,5),
(3,318,48),
(4,110,4),
(5,011,47),
(6,516,55),
(7,516,9),
(8,110,2),
(9,516,4),
(10,912,7);

