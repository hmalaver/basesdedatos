-- comentario de una línea;
/*
comentario de varias lineas
sql no distingue entre MAYUSCULAS y minusculas
todas las instrucciones deben terminar en punto y coma;
*/

-- crear una base de datos
CREATE DATABASE curso_sql;
CREATE DATABASE IF NOT EXISTS curso_sql;

-- eliminar una base de datos
DROP DATABASE curso_sql;
DROP DATABASE IF EXISTS curso_sql;

-- crear un usuario para una base de datos y su password
CREATE USER 'helton'@'localhost' IDENTIFIED BY '74473156';

-- asignar / conceder privilegios a un usuario
GRANT ALL PRIVILEGES ON curso_sql TO 'helton'@'localhost';

-- despues de modificar los privilegios ejecutar
FLUSH PRIVILEGES;

-- verificar los privilegios de un usuario
SHOW GRANTS FOR 'helton'@'localhost';

-- eliminar los privilegios a un usuario
REVOKE ALL, GRANT OPTION FROM 'helton'@'lolcalhost';

-- eliminar usuario
DROP USER 'helton'@'localhost';

SHOW DATABASES;

-- indicar que base de datos a usar
USE curso_sql;

SHOW TABLES;

-- ver caracteristicas de una tabla
DESCRIBE usuarios;

CREATE TABLE usuarios(
	nombre VARCHAR(50),
    correo VARCHAR(50)
);

-- añadir una columna a la tabla
ALTER TABLE usuarios ADD COLUMN cumpleaños VARCHAR(15);

-- modificar el tipo de dato de la columna
ALTER TABLE usuarios MODIFY cumpleaños DATE;

-- cambiar nombre a la columna
ALTER TABLE usuarios RENAME COLUMN cumpleaños TO nacimiento;

-- eliminar una columna
ALTER TABLE usuarios DROP COLUMN nacimiento;

-- eliminar una tabla
DROP TABLE usuarios;

CREATE TABLE usuarios(
	usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellidos VARCHAR(30) NOT NULL,
    correo VARCHAR(50) UNIQUE,
    direccion VARCHAR(100),
    edad INT  DEFAULT 0
);

-- formas de insertar registros
INSERT INTO usuarios VALUES (0, "helton", "Malaver", "helton@gmail.com", "direccion de helton", 20);
INSERT INTO usuarios (nombre, apellidos,  edad) VALUES ("junior", "Montoya", 20);
INSERT INTO usuarios (nombre, apellidos, correo, direccion, edad) VALUES
("pepito", "perez", "pepito@gmail.com", "direccion de pepito", 10),
("pepe", "lopez", "pepe@gmail.com", "direccion de pepe", 15),
("tito", "ruiz", "tito@gmail.com", "direccion de tito", 12);

-- formas de leer los campos
SELECT * FROM usuarios;
SELECT nombre, edad FROM usuarios;
SELECT COUNT(*) FROM usuarios;
SELECT COUNT(*) AS total_usuarios FROM usuarios;

SELECT * FROM usuarios WHERE nombre = "helton";
SELECT * FROM usuarios WHERE nombre IN ("helton", "junior", "pepe");

SELECT * FROM usuarios WHERE apellidos LIKE 'm%';
SELECT * FROM usuarios WHERE correo LIKE '%@gmail.com';
SELECT * FROM usuarios WHERE nombre LIKE '%ep%';

SELECT * FROM usuarios WHERE apellidos NOT LIKE 'm%';
SELECT * FROM usuarios WHERE correo NOT LIKE '%@gmail.com';
SELECT * FROM usuarios WHERE nombre NOT LIKE '%ep%';

SELECT * FROM usuarios WHERE edad != 15;
SELECT * FROM usuarios WHERE edad <> 15;

SELECT * FROM usuarios WHERE edad = 15;
SELECT * FROM usuarios WHERE edad > 15;
SELECT * FROM usuarios WHERE edad >= 15;
SELECT * FROM usuarios WHERE edad < 15;
SELECT * FROM usuarios WHERE edad <= 15;

SELECT * FROM usuarios WHERE direccion = "direccion de pepe";
SELECT * FROM usuarios WHERE NOT direccion = "direccion de pepe";
SELECT * FROM usuarios WHERE direccion != "direccion de pepe" AND edad >= 15;
SELECT * FROM usuarios WHERE direccion != 'direccion de tito' OR edad >= 15;

-- actualizar campos
UPDATE usuarios SET correo = "junior@gmail.com", direccion = "direccion de junior" WHERE usuario_id = 2;

-- eliminar registros
DELETE FROM usuarios WHERE usuario_id = 5;

-- reiniciar una tabla para volver a insertar datos desde el ID 1
TRUNCATE TABLE usuarios;





