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

- [X] Acceder a la base de datos con todos los usuarios creados y ejecutar por cada uno de ellos dos sentencias sobre las que tengan privilegios y otras dos sobre las que no:
    - [X] Para Gohan
    - [X] Para Vegeta
    - [X] Para Bidel
    - [X] Para Trunks
    - [X] Para Goku
    
- [X] Revocar los permisos de Goku y asegurarse de que se ha hecho correctamente.

### Tareas Parte 2

- [X] Crear la vista A que tenga información clave de los clientes (ClienteID, Nombre, Apellidos, Provincia, Email)

- [X] Crear la vista B que tenga información clave de los videojuegos (JuegoID, Titulo, Tamanio, Editor)

- [X] Crear consultas sobre la vista A:
    - [X] A1 - Obtener nombres y apellidos de clientes ordenados por provincia.
    - [X] A2 - Obtener el número de clientes de Sevilla.
    - [X] A3 - Obtener el email de los clientes de Barcelona.
    - [X] A4 - Insertar los nuevos clientes.

- [X] Crear consultas sobre la vista B:
    - [X] B1 - Obtener información de los videojuegos ordenados por tamaño.
    - [X] B2 - Obtener el número de videojuegos editados por Nintendo.
    - [X] B3 - Insertar nuevos videojuegos de GameBoy.

- [X] Ejecutar con el usuario **root** las consultas anteriores y tomar sus tiempos:
    - [X] Ejecución de A1: T = 0.2714 segundos.
    - [X] Ejecución de A2: T = 0.0427 segundos.
    - [X] Ejecución de A3: T = 0.0188 segundos.
    - [X] Ejecución de A4: T = 0.0156 segundos.
    - [X] Ejecución de B1: T = 0.0299 segundos.
    - [X] Ejecución de B2: T = 0.0041 segundos.
    - [X] Ejecución de B3: T = 0.0149 segundos.
    
- [X] Crear con el usuario **root** las vistas que permitan la ejecución de las operaciones mencionadas.

- [X] Crear con el usuario **root** al usuario freezer y darle los permisos para trabajar con las vistas mediante las operaciones indicadas.

- [X] Ejecutar con el usuario freezer las operaciones A1, A2, A3, B1, y B2 sobre las vistas y tomar sus tiempos:
    - [X] Ejecución de A1 sobre A: T = 0.2769 segundos.
    - [X] Ejecución de A2 sobre A: T = 0.0299 segundos.
    - [X] Ejecución de A3 sobre A: T = 0.0223 segundos.
    - [X] Ejecución de B1 sobre B: T = 0.0027 segundos.
    - [X] Ejecución de B2 sobre B: T = 0.0016 segundos.

- [X] Ejecutar con el usuario freezer las operaciones A4 y B3 sobre las vistas y tomar sus tiempos:

    NOTA: Esta operación falla si las vistas no tienen todos los campos que no pueden ser nulos de la tabla original. Por tanto se añaden los campos nulos a las vistas (DNI al conjunto A y Consola al conjunto B
    - [X] Ejecución de A4 sobre A: T = 0.0084 segundos.
    - [X] Ejecución de B3 sobre B: T = 0.0153 segundos.

- [X] Comprobar si freezer puede operar directamente sobre las tablas a las que referencian las vistas.
    NOTA: Vale con un SELECT * FROM clientes y otro sobre juegos para demostrar que no tiene acceso.

- [X] Realizar una comparativa de los dos métodos utilizados para manipular la información (consultas y vistas) que incluya aspectos de rendimiento y seguridad.
