SHOW TABLES;
DROP TABLE caballeros;

TRUNCATE TABLE caballeros;

CREATE TABLE caballeros(
	caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    armadura VARCHAR(30) UNIQUE,
    rango VARCHAR(30),
	signo VARCHAR(30),
    ejercito VARCHAR(30),
    pais VARCHAR(30),
    INDEX i_signo (signo)
);

CREATE TABLE caballeros(
	caballero_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30),
    armadura VARCHAR(30) UNIQUE,
    rango VARCHAR(30),
	signo VARCHAR(30),
    ejercito VARCHAR(30),
    pais VARCHAR(30),
    FULLTEXT INDEX fi_search (armadura, rango, signo, ejercito, pais)
);

INSERT INTO caballeros VALUES
(0, "saga", "geminis", "oro", "geminis", "athena", "grecia"),
(0, "camus", "acuario", "oro", "acuario", "athena", "francia"),
(0, "rhadamanthys", "wyvern", "espectro", "escorpion", "hades", "grecia"),
(0, "kanon", "dragon", "marino", "geminis", "poseidon", "inglaterra"),
(0, "kagaho", "bennu", "espectro", "leo", "hades", "rusia");

SELECT * FROM caballeros;

SHOW INDEX FROM caballeros;

-- HACER BUSQUEDA POR PALABRA
SELECT * FROM caballeros
	WHERE MATCH(armadura, rango, signo, ejercito, pais)
    AGAINST('oro' IN BOOLEAN MODE);






