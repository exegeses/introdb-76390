# consultas en SQL

## Consultas a servidor de BBDD

    -- listar todas las bases de datos  
    SHOW DATABASES;  

> la palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- activar una base de datos  
    USE nombreBase;  

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos
    
    -- listar todas las tablas dentro de una bbdd  
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> Para realizar consultas a una tabla y que nos devuelva la lista de los datos (registros) vamos a utilizar  
> la palabra reservada **SELECT** seguida de la palabra **FROM**

    SELECT * FROM nombreTabla;  

> ejemplo práctico:

    SELECT * FORM personas;  

    SELECT * FROM proveedores;  

> Este tipo de consultas nos trae los datos de todas las columnas existentes en la tabla que nosotros pidamos
> si nosotros queremos traer información de aólo algunas de las columnas vamos a tener que especificar luego de la palabra **SELECT** cada una de esas columnas separadas por comas

    SELECT nombreCampo, nombreCampo
       FROM nombreTabla;  

> obtener todos los datos de la columna llamada "razonsocial" y de la columna llamada "telefono" de la tabla proveedores

    SELECT razonsocial, telefono  
      FROM proveedores;  

### Orden de los resultados  

> Para ordenar los resultados de una consulta vamos a utilizar el comando **ORDER BY** seguido de la columna que queremos utilizar como criterio de orden

    SELECT nombreCampo, nombreCampo
       FROM nombreTabla  
       ORDER BY nombreCampo;  

> Ejemplo práctico: 

    SELECT * FROM marcas  
      ORDER BY idMarca;  

    SELECT * FROM productos  
      ORDER BY prdPrecio DESC;

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;  

