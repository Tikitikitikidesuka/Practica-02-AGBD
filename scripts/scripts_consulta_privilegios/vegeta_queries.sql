#INICIADO SESIÓN COMO VEGETA

#SENTENCIAS CON PERMISOS
SELECT * 
FROM clientes;

INSERT INTO `juegos` (`JuegoID`, `Titulo`, `Consola`, `Tamanio`, `Editor`)
VALUES (9999, "Cowabunga 0", "Pleisteision", 32768, "UPMGames");

#SENTENCIAS SIN PERMISOS
SET SQL_SAFE_UPDATES = 0;

DELETE FROM juegos
WHERE JuegoID = 9999;

UPDATE juegos
	SET juegoId = 0
	WHERE JuegoID = 9999;
    
SET SQL_SAFE_UPDATES = 1;