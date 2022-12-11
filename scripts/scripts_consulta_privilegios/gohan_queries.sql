#INICIADO SESIÓN COMO GOHAN

#SENTENCIAS CON PERMISOS
SET SQL_SAFE_UPDATES = 0;

SELECT COUNT(*) AS Ventas, juegos.Titulo
	FROM clientes_juegos JOIN juegos ON clientes_juegos.juegoID = juegos.juegoID
	GROUP BY juegos.juegoID, juegos.Titulo
	HAVING COUNT(*) >= ALL (SELECT COUNT(*)
		FROM clientes_juegos
		GROUP BY juegoID
	);
                            
INSERT INTO `juegos` (`JuegoID`, `Titulo`, `Consola`, `Tamanio`, `Editor`)
VALUES (10000, "Cowabunga", "MegaDrive", 32768, "UPMGames");

SET SQL_SAFE_UPDATES = 1;

#SENTENCIAS SIN PERMISOS
DROP TABLE juegos;

CREATE TABLE juegosDeMesa (
	JuegoID INT UNIQUE NOT NULL,
	Titulo VARCHAR(256) /*UNIQUE*/ NOT NULL,
	NumeroJugadores INT,
	Empresa VARCHAR(32)
)
