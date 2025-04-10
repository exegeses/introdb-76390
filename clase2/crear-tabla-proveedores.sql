# script para la creación de tabla proveedores
CREATE TABLE proveedores
(
    idProveedor tinyint unsigned auto_increment primary key,
    razonsocial varchar(100) not null,
    cuit int unsigned unique not null,
    telefono varchar(20) not null,
    email varchar(50),
    direccion varchar(100)
);
