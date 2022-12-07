#INICIADO SESIÓN COMO GOHAN

CREATE ROLE dependiente;

GRANT SELECT ON PracABD1.* TO dependiente;

GRANT INSERT, UPDATE ON PracABD1.clientes TO dependiente;

GRANT INSERT ON PracABD1.clientes_juegos TO dependiente;

CREATE USER 'trunks' IDENTIFIED BY 'trunks';

CREATE USER 'goku' IDENTIFIED BY 'goku';

GRANT dependiente TO trunks, goku;