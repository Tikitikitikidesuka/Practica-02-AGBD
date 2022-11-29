# Práctica 02 AGBD

Repositorio de la segunda práctica de la asignatura de administración y gestión de bases de datos.

---

### Tareas Parte 1

- [ ] Establecer los niveles de seguridad y confidencialidad:
    - [ ] Rol gestor:
        Podrá realizar cualquier operación LMD sobre las tablas y tendrá permiso de propagación de privilegios. Además, los usuarios con este rol podrán operar (crear, modificar, etc.) con los roles, usuarios y privilegios que se abordan en los siguientes puntos. **Este rol y el usuario de este tipo será dado de alta por el usuario root**.
    - [ ] Rol compradorJuegos:
        Podrá visualizar todas las tablas de la BD y también podrá dar de alta nuevos videojuegos que ha adquirido (operando sobre la tabla Videojuegos). **Este rol y los usuarios de este tipo serán dados de alta por un usuario con rol gestor**.
    - [ ] Rol dependiente:
        Podrá visualizar todas las tablas de la BD, dar de alta nuevos clientes y modificar clientes existentes (operando sobre la tabla Clientes), así como indicar que un cliente ha alquilado un videojuego añadiendo un nuevo registro (operando sobre la tabla Clientes_Videojuegos). **Este rol y los usuarios de este tipo serán dados de alta por un usuario con rol gestor**.

- [ ] Crear los usuarios siguientes y establecer sus roles:
    - [ ] Usuario: Gohan - Rol: Gestor
    - [ ] Usuario: Vegeta - Rol: CompradorJuegos
    - [ ] Usuario: Bidel - Rol: CompradorJuegos
    - [ ] Usuario: Trunks - Rol: Dependiente
    - [ ] Usuario: Goku - Rol: Dependiente

- [ ] Con el usuario root, asegurarse de que los roles y usuarios se han creado adecuadamente:
    - [ ] Mediante consultas al catálogo de la base de datos
    - [ ] Mediante la sentencia `SHOW GRANTS FOR 'user_role'`
    - [ ] Mediante la interfaz de MySQL Workbench

- [ ] Acceder a la base de datos con todos los usuarios creados y ejecutar por cada uno de ellos dos sentencias sobre las que tengan privilegios y otras dos sobre las que no:
    - [ ] Para Gohan
    - [ ] Para Vegeta
    - [ ] Para Bidel
    - [ ] Para Trunks
    - [ ] Para Goku
    
- [ ] Revocar los permisos de Goku y asegurarse de que se ha hecho correctamente.
