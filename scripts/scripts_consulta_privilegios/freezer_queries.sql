#INICIANDO SESIÓN COMO FREEZER

SET PROFILING = TRUE;

#A1
SELECT Nombre, Apellidos
	FROM conjuntoA
    ORDER BY provincia;

#A2
SELECT COUNT(*) AS ClientesEnSevilla
	FROM conjuntoA
    WHERE Provincia = "Sevilla";

#A3    
SELECT Email
	FROM conjuntoA
    WHERE Provincia = "Barcelona";

#B1
SELECT *
	FROM conjuntoB
	ORDER BY Tamanio;

#B2
SELECT COUNT(*) AS NumeroJuegosNintendo
	FROM conjuntoB
    WHERE Editor = "Nintendo";
    
SHOW PROFILES;

SET PROFILING = TRUE;

#B3
INSERT INTO conjuntoB (JuegoID, Titulo, Consola, Tamanio, Editor)
	VALUES (372187, 'Final Fiesta II', 'GameBoy', '42069', 'Marvel');

#A4
INSERT INTO conjuntoA (CLienteID, DNI, Nombre, Apellidos, Provincia, Email)
	VALUES (578934798, '99999999A', 'Usopp', 'Yusuf', 'Grand Line', 'ussopsenchoo@hotmale.com');
	
SHOW PROFILES;
