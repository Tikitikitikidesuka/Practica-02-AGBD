# Práctica 02 AGBD

Repositorio de la segunda práctica de la asignatura de administración y gestión de bases de datos.

---

### Tareas Parte 1

- [X] Establecer los niveles de seguridad y confidencialidad:
    - [X] Rol gestor:
        Podrá realizar cualquier operación LMD sobre las tablas y tendrá permiso de propagación de privilegios. Además, los usuarios con este rol podrán operar (crear, modificar, etc.) con los roles, usuarios y privilegios que se abordan en los siguientes puntos. **Este rol y el usuario de este tipo será dado de alta por el usuario root**.
    - [X] Rol compradorJuegos:
        Podrá visualizar todas las tablas de la BD y también podrá dar de alta nuevos videojuegos que ha adquirido (operando sobre la tabla Videojuegos). **Este rol y los usuarios de este tipo serán dados de alta por un usuario con rol gestor**.
    - [X] Rol dependiente:
        Podrá visualizar todas las tablas de la BD, dar de alta nuevos clientes y modificar clientes existentes (operando sobre la tabla Clientes), así como indicar que un cliente ha alquilado un videojuego añadiendo un nuevo registro (operando sobre la tabla Clientes_Videojuegos). **Este rol y los usuarios de este tipo serán dados de alta por un usuario con rol gestor**.

- [X] Crear los usuarios siguientes y establecer sus roles:
    - [X] Usuario: Gohan - Rol: Gestor
    - [X] Usuario: Vegeta - Rol: CompradorJuegos
    - [X] Usuario: Bidel - Rol: CompradorJuegos
    - [X] Usuario: Trunks - Rol: Dependiente
    - [X] Usuario: Goku - Rol: Dependiente

- [X] Con el usuario root, asegurarse de que los roles y usuarios se han creado adecuadamente:
    - [X] Mediante consultas al catálogo de la base de datos
    - [X] Mediante la sentencia `SHOW GRANTS FOR 'user_role'`
    - [X] Mediante la interfaz de MySQL Workbench

- [ ] Acceder a la base de datos con todos los usuarios creados y ejecutar por cada uno de ellos dos sentencias sobre las que tengan privilegios y otras dos sobre las que no:
    - [ ] Para Gohan
    - [ ] Para Vegeta
    - [ ] Para Bidel
    - [ ] Para Trunks
    - [ ] Para Goku
    
- [ ] Revocar los permisos de Goku y asegurarse de que se ha hecho correctamente.
