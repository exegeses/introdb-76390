# Insertar datos en SQL

> Para insertar datos en SQL tenemos tres maneras de hacerlo
> Las tres maneras comienzan con la siguiente sintaxis

    INSERT INTO nombreTabla

## Sintaxis usando SET

> fórmula: 

    INSERT INTO nombreTabla  
        SET 
            nombreCampo = valor,            
            nombreCampo2 = valor2,            
            nombreCampo3 = valor3,            
            nombreCampoX = valorX;

> ejemplo práctico:

    INSERT INTO personas  
        SET  
            id = 1,  
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';  

    INSERT INTO personas  
        SET
            apellido = 'González',
            nombre = 'Mónica',  
            dni = 36520147,  
            alta = '2005-09-30';  


## Sintaxis completa (se mencionan los campos)

> fórmula: 

    INSERT INTO nombreTabla  
        ( nCampo, nCampo2, nCampo3, nCampoX )  
      VALUES  
        ( vCampo, vCampo2, vCampo3, vCampoX );  


> ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Martínez', 'Vanesa', 35741951, '2006-06-21' );


## Sintaxis simplificada (NO se mencionan los campos)

> En la sintaxis simplificada NO necesitamos mencionar los campos entre paréntesis, pero vamos a necesitar mencionar todos y cada uno de los valores en el orden en el que existen en la tabla  

> fórmula: 

    INSERT INTO nombreTabla  
      VALUES  
        ( vCampo, vCampo2, vCampo3, vCampoX );

> ejemplo práctico:  

    INSERT INTO personas
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' );  

-----
## insertar múltiples registros
> en algunos casos vamos a necesitar insertar varios registros en una sola ejecución
> no es obligatorio hacer un **INSERT** por cada uno de los registros

/*
    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( 'Jones', 'John', 18543222, '1946-01-03' );
*/
    INSERT INTO personas   
      VALUES  
        ( DEFAULT, 'Page', 'Jimmy', 18543219, '1944-01-09' ),
        ( DEFAULT, 'Plant', 'Robert', 18543220, '1948-08-20' ),
        ( DEFAULT, 'Bonham', 'Bonzo', 18543221, '1948-05-31' ),
        ( DEFAULT, 'Jones', 'John', 18543222, '1946-01-03' );
