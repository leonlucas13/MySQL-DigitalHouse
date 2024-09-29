create database TiendaOnline;
use TiendaOnline;

CREATE TABLE usuarios(
id_usuario INT PRIMARY KEY,
nombre VARCHAR(100),
correo VARCHAR(150),
contrasena VARCHAR(550),
fecha_creacion timestamp
);

/*CORRECCION YA QUE PUSE UNA PASSWORD MUY AMPLIA*/
alter table usuarios MODIFY contrasena VARCHAR(50);

/*ESTA TABLA SE CREO CON EL WIZARD DE MYSQL WORKBENCH*/
CREATE TABLE `tiendaonline`.`productos` (
  `id_Producto` INT NOT NULL,
  `nombre` VARCHAR(100) NULL,
  `descripcion` VARCHAR(250) NULL,
  `precio` DECIMAL NULL,
  `stock` INT NULL,
  `fecha_agregado` TIMESTAMP NULL,
  PRIMARY KEY (`id_Producto`));
  
  
  CREATE TABLE Carrito (
  id_carrito INT PRIMARY KEY,
  id_usuario INT,
  fecha_creacion timestamp,
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
  );
  
  /*ESTA TABLA SE CREO CON EL WIZARD DE MYSQL WORKBENCH*/
  CREATE TABLE `tiendaonline`.`detallecarrito` (
  `idDetalleCarrito` INT NOT NULL,
  `idCarrito` INT NULL,
  `id_Producto` INT NULL,
  `Cantidad` INT NULL,
  `fecha_agregado` TIMESTAMP NULL,
  PRIMARY KEY (`idDetalleCarrito`),
  INDEX `FK1_idx` (`id_Producto` ASC) VISIBLE,
  INDEX `FK2_idx` (`idCarrito` ASC) VISIBLE,
  CONSTRAINT `FK1`
    FOREIGN KEY (`id_Producto`)
    REFERENCES `tiendaonline`.`productos` (`id_Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK2`
    FOREIGN KEY (`idCarrito`)
    REFERENCES `tiendaonline`.`carrito` (`id_carrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE Categoria_Producto (
id_categoria INT PRIMARY KEY,
nombre VARCHAR (100),
fecha_creacion timestamp
);

ALTER TABLE productos ADD categoria INT;

ALTER TABLE productos ADD constraint `fk` foreign key (`categoria`) references `categoria_producto`(`id_categoria`)