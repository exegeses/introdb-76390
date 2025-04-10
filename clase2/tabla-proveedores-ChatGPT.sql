CREATE TABLE proveedores (
     idProveedor TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     razonsocial VARCHAR(100) NOT NULL,
     cuit INT NOT NULL UNIQUE,
     telefono VARCHAR(20),
     email VARCHAR(50),
     direccion VARCHAR(100)
);
