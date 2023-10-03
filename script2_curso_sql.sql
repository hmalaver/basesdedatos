CREATE DATABASE cursosql;

USE cursosql;

CREATE TABLE usuarios(
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    correo VARCHAR(50)UNIQUE,
    edad INT DEFAULT 0
);

INSERT INTO usuarios (nombre, apellidos, correo, edad) VALUES 
("Helton", "Malaver", "helton@gmail.com", 20),
("jhon", "cena", "jhon@gmail.com", 45),
("junior", "Malaver", "junior@gmail.com", 20),
("connor", "mcgregor", "conor@gmail.com", 33),
("roman", "reigns", "roman@gmail.com", 36);

CREATE TABLE productos(
producto_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(50),
precio DECIMAL(7,2),
cantidad INT UNSIGNED
);

INSERT INTO productos (nombre, descripcion, precio, cantidad) VALUES
("computadora", "Macbook Air M2", 29999.99, 5),
("celular", "Nothing Phone 1", 11999.99, 15),
("camara web", "Logitech C920", 1500, 13),
("microfono", "Blue Yeti", 2500, 19),
("audifonos", "audifonos bose", 6500, 10);

SELECT * FROM usuarios;
SELECT * FROM productos;

CREATE TABLE caballeros(
	caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    armadura VARCHAR(30),
    rango VARCHAR(30),
	signo VARCHAR(30),
    ejercito VARCHAR(30),
    pais VARCHAR(30)
);

INSERT INTO caballeros VALUES
(0, "saga", "geminis", "oro", "geminis", "athena", "grecia"),
(0, "camus", "acuario", "oro", "acuario", "athena", "francia"),
(0, "rhadamanthys", "wyvern", "espectro", "escorpion", "hades", "grecia"),
(0, "kanon", "dragon", "marino", "geminis", "poseidon", "inglaterra"),
(0, "kagaho", "bennu", "espectro", "leo", "hades", "rusia");

-- query saber cuantos registros hay en un campo especifico
SELECT signo, COUNT(*) AS total FROM caballeros GROUP BY signo;
SELECT rango, COUNT(*) AS total FROM caballeros GROUP BY rango;
SELECT pais, COUNT(*) AS total FROM caballeros GROUP BY pais;

SELECT ejercito, COUNT(*) AS total FROM caballeros WHERE ejercito = "athena" GROUP BY ejercito;

SELECT ejercito, COUNT(*) AS total FROM caballeros WHERE ejercito = "athena" GROUP BY ejercito
HAVING total >= 2;

-- MOSTRAR  LOS CAMPOS SIN VALORES REPETIDOS
SELECT DISTINCT signo FROM caballeros;
SELECT DISTINCT armadura FROM caballeros;
SELECT DISTINCT ejercito FROM caballeros;
SELECT DISTINCT pais FROM caballeros;

-- ORDENAR LOS VALORES DE UNA FORMA ESPECIFICA
SELECT * FROM caballeros ORDER BY nombre ASC;
SELECT * FROM caballeros ORDER BY nombre DESC;

SELECT * FROM caballeros ORDER BY nombre, signo DESC;
SELECT * FROM caballeros WHERE ejercito = "athena" ORDER BY  nombre, armadura;

SELECT * FROM productos;

-- MOSTRAR VALORES DENTRO DE UN RANGO
SELECT * FROM productos WHERE precio >= 5000 AND precio <=15000;
SELECT * FROM productos WHERE precio BETWEEN 5000 AND 15000;

-- EXPRESIONES REGULARES
SELECT * FROM productos WHERE nombre REGEXP '[a-f]';
SELECT * FROM productos WHERE precio REGEXP '[2-3]';

SELECT ('Hola Mundo');
SELECT LOWER('Hola Mundo');
SELECT LCASE('Hola Mundo');
SELECT UPPER('Hola Mundo');
SELECT UCASE('Hola Mundo');
SELECT LEFT('Hola Mundo', 6);
SELECT RIGHT('Hola Mundo', 6);
SELECT LENGTH('Hola Mundo');
SELECT REPEAT('Hola Mundo', 3);
SELECT REVERSE('Hola Mundo');
SELECT REPLACE('Hola Mundo', 'O', 'X');
SELECT LTRIM('  Hola Mundo   ');
SELECT RTRIM('             Hola Mundo    ');
SELECT TRIM('   Hola Mundo    ');
SELECT CONCAT('Hola', 'Mundo', 'desde', 'SQL');
SELECT CONCAT_WS('_', 'Hola', 'Mundo', 'desde', 'SQL');

SELECT UPPER(nombre), LOWER(descripcion), precio FROM productos;










