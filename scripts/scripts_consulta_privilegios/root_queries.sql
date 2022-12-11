#INICIANDO SESIÓ COMO ROOT

SET PROFILING = TRUE;

#A1
SELECT Nombre, Apellidos
	FROM clientes
    ORDER BY provincia;

#A2
SELECT COUNT(*) AS ClientesEnSevilla
	FROM clientes
    WHERE Provincia = "Sevilla";

#A3    
SELECT Email
	FROM clientes
    WHERE Provincia = "Barcelona";

#A4
INSERT INTO clientes (CLienteID, DNI, Nombre, Apellidos, Genero, Direccion, Localidad, Provincia, CodPostal, Telefono, Canal, FechaNacimiento, FechaContacto, Email)
	VALUES (578934798, '99999999A', 'Usopp', 'Yusuf', 'H', 'La Mar', 'Alabasta', 'Grand Line', '00000', 'Caracol', 'desconocido', '1990/1/1', '2002/3/3', 'ussopsenchoo@hotmale.com');
    
#B1
SELECT *
	FROM juegos
	ORDER BY Tamanio DESC;

#B2
SELECT COUNT(*) AS NumeroJuegosNintendo
	FROM juegos
    WHERE Editor = "Nintendo" AND Consola = "GameBoy";
    
#B3
INSERT INTO juegos (JuegoID, Titulo, Consola, Tamanio, Editor)
	VALUES (372187, "Final Fiesta II", "GameBoy", "42069", "Marvel");

SHOW PROFILES;