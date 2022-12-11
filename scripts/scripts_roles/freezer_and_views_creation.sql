
#INICIADO SESIÓN COMO ROOT

CREATE USER 'freezer' IDENTIFIED BY 'freezer';

#Conjunto A
CREATE VIEW conjuntoA
	AS SELECT CLienteID, DNI, Nombre, Apellidos, Provincia, Email
    FROM PracABD1.clientes;
    
GRANT SELECT, INSERT ON conjuntoA TO 'freezer';

#Conjunto B

CREATE VIEW conjuntoB
	AS SELECT JuegoID, Titulo, Consola, Tamanio, Editor
    FROM PracABD1.juegos
    WHERE Consola = "GameBoy";

GRANT SELECT, INSERT ON conjuntoB TO 'freezer';

