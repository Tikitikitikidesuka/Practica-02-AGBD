CREATE ROLE 'testo_role'@'%';

GRANT SELECT, INSERT, UPDATE, DELETE ON PracABD1.* TO 'testo_role'@'%';

CREATE USER 'testo_user'@'%' IDENTIFIED BY 'Keo';

GRANT 'testo_role'@'%' TO 'testo_user'@'%';

SELECT current_role();

SET DEFAULT ROLE ALL TO 'gohan';  # IMPORTANTE B)

SELECT current_role();