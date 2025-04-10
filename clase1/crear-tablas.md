# crear tablas en SQL

> para crear una tabla dentro de una base de datos utilizamos el comando **CREATE TABLE**

> Sintáxis:

    CREATE TABLE nombre   
    (  
        nombreCampo1 tipoDato características, 
        nombreCampo2 tipoDato características,   
        nombreCampo3 tipoDato características,   
        nombreCampox tipoDato características
    );  

> Ejemplo práctico: 

    CREATE TABLE personas   
    (  
        id int auto_increment primary key,   
        apellido varchar(50),   
        nombre varchar(50),   
        dni int,   
        alta date
    );  


## Estructura
> para poder crear una tabla voy a tener que definir toda su estructura
> la estructura de una tabla son las columnas,
> sus tipos de datos y características adicionales
 
## Tipos de datos

> Tenemos (en una clasificación MUY AMPLIA) tres principales tipos de datos que son
> numéricos, alfanuméricos y fechas.
