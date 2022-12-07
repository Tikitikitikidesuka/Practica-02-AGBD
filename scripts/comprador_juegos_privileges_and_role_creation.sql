#INICIADO SESIÓN COMO GOHAN

CREATE ROLE compradorJuegos;

GRANT SELECT ON PracABD1.* TO compradorJuegos;

GRANT INSERT ON PracABD1.juegos TO compradorJuegos;

CREATE USER 'vegeta' IDENTIFIED BY 'vegeta';

CREATE USER 'videl' IDENTIFIED BY 'videl';

GRANT compradorJuegos TO vegeta, videl;