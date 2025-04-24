create table precios
(
    id tinyint unsigned auto_increment primary key not null,
    exacto decimal(10,2) unsigned not null,
    aproximado float unsigned not null
);

insert into precios
    values
        ( default, 20, 20 ),
        ( default, 30.55, 30.55 ),
        ( default, 23.32, 23.32 ),
        ( default, 64.53, 64.53 ),
        ( default, 40, 40 ),
        ( default, 55.55, 55.55 ),
        ( default, 15.20, 15.20 ),
        ( default, 75.37, 75.37 ),
        ( default, 60, 60 );

select SUM(exacto), SUM(aproximado)
    from precios;