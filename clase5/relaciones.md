# consultas a dos o más tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas.
> Para ello tenemos dos técnicas

## 1.- Table Relation

> la técnica **Table Relation** se logra mencionando en el listado de tablas (después del **FROM**) cada una de las tablas necesarias para la consulta (separadas por comas)
> Y luego mediante un filtro (**WHERE**) 
> igualamos la columna en común
> hay que igualar la Foreign Key de una tabla con la Primary Key de la otra tabla

> sintaxis:

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias    
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  


## 2.- Join 

> En la técnica **JOIN** no vamos a mencionar en el listado de las tablas (después del **FROM**) cada una de las tablas necesarias para la consulta
> Sólo se menciona la tabla principal
> Y luego usamos la palabra reservada **JOIN** para relacionar la tabla secundaria
> Y finalizamos igualando la columna en común luego de la palabra reservada **ON**

> sintaxis:

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;  

> ejemplo práctico:

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

