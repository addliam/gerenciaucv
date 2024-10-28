-- Nombre de la base de datos: bdgerencia
CREATE TABLE `CategoriaGasto` (
  `categoriagasto_id` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100),
  PRIMARY KEY (`categoriagasto_id`)
);
CREATE TABLE `Usuario` (
  `usuario_id` INT AUTO_INCREMENT,
  `email` VARCHAR(100),
  `contrasena` VARCHAR(255),
  PRIMARY KEY (`usuario_id`)
);
CREATE TABLE `Persona` (
  `persona_id` INT AUTO_INCREMENT,
  `usuario_id` INT,
  `nombre` VARCHAR(100),
  `apellidos` VARCHAR(100),
  `fecha_nacimiento` DATE,
  `ocupacion` VARCHAR(255),
  `ingresos` DECIMAL(10, 2),
  `fecha_registro` DATE,
  PRIMARY KEY (`persona_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`)
);
CREATE TABLE `Gasto` (
  `gasto_id` INT AUTO_INCREMENT,
  `categoriagasto_id` INT,
  `usuario_id` INT,
  `nombre` VARCHAR(100),
  `monto` DECIMAL(10, 2),
  `fecha` DATE,
  PRIMARY KEY (`gasto_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`),
  FOREIGN KEY (`categoriagasto_id`) REFERENCES `CategoriaGasto`(`categoriagasto_id`)
);
CREATE TABLE `Meta` (
  `meta_id` INT AUTO_INCREMENT,
  `usuario_id` INT,
  `nombre` VARCHAR(100),
  `monto_maximo` DECIMAL(10, 2),
  `categoriagasto_id` INT,
  `plazo` DATE,
  PRIMARY KEY (`meta_id`),
  FOREIGN KEY (`categoriagasto_id`) REFERENCES `CategoriaGasto`(`categoriagasto_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES `Usuario`(`usuario_id`)
);
