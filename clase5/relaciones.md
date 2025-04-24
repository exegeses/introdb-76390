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

