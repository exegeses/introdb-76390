# tabla pivote o intermedia

CREATE TABLE productos_proveedores
(
    idProducto smallint unsigned,
    idProveedor tinyint unsigned,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);

