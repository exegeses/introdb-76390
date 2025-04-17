# Filtros en SQL

> Filtrar registros significa que vamos a traer sólo una cantidad de registros pero estos deben cumplir con una condición
> para implementar un filtro utilizamos la palabra reservada
> **WHERE** seguida de una condición

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion;  

> traer todoas las personas con una fecha de alta anterior a 1950

    SELECT nombre, apellido, alta    
      FROM personas  
      WHERE alta <= '1950-01-01';  

> si necesitamos agregar más de un filtro podemos hacerlo con la palabra reservada **AND**

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion  
        AND condicion2;  


> traer todas las personas con una fecha de alta entre el 31 de diciembre de 2022 y el 1 de enero de 2010

    SELECT nombre, apellido, alta    
      FROM personas  
      WHERE alta <= '2022-12-31'  
        AND alta >= '2010-01-01'

> las fechas tienen funciones que nos sirven para indicar que solamente nos interesa el año o el mes o el día

    SELECT nombre, apellido, alta  
      FROM personas  
      WHERE YEAR(alta) <= 2022  
        AND YEAR(alta) >= 2010;  

    SELECT nombre, apellido, alta  
      FROM personas  
      WHERE month(alta) = 4;  

