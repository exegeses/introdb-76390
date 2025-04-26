# consultas a una tabla intermedia
/*
    Obtener nombre del producto y precio del producto
        (de la tabla productos)
    Y además una tercera columna con el nombre del proveedor
        (de la tabla proveedores)
*/

SELECT prdNombre, prdPrecio, razonsocial
  FROM productos
  JOIN productos_proveedores
    ON productos.idProducto = productos_proveedores.idProducto
  JOIN proveedores
    ON productos_proveedores.idProveedor = proveedores.idProveedor;

/*
    Obtener nombre del producto y precio del producto
        (de la tabla productos)
    y además el nombre de la marca y el nombre de la categoría
    Y además el nombre del proveedor
        (de la tabla proveedores)
*/
SELECT prdNombre, prdPrecio, mkNombre, catNombre, razonsocial
FROM productos
JOIN marcas
ON productos.idMarca = marcas.idMarca
JOIN categorias
ON productos.idCategoria = categorias.idCategoria
JOIN productos_proveedores
ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
ON productos_proveedores.idProveedor = proveedores.idProveedor
