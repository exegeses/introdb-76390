create table marcas
(
    idMarca smallint unsigned auto_increment primary key,
    mkNombre varchar(50) unique not null
);

create table categorias
(
    idCategoria smallint unsigned auto_increment primary key,
    catNombre varchar(50) unique not null
);


create table productos
(
    idProducto smallint unsigned  auto_increment primary key,
    prdNombre varchar(50) unique not null,
    prdPrecio decimal(10,2) unsigned not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    prdDescripcion varchar(250) not null,
    prdImagen varchar(50) not null,
    prdActivo boolean not null default(1),
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);