CREATE TABLE `proveedores`(
    `idProveedor` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonsocial` VARCHAR(100) NOT NULL,
    `cuit` INT UNSIGNED NOT NULL,
    `telefono` VARCHAR(20) NOT NULL,
    `email` VARCHAR(50) NULL,
    `direccion` VARCHAR(100) NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_cuit_unique`(`cuit`);