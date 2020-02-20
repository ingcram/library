DROP DATABASE IF EXISTS laBD;
CREATE TABLE IF NOT EXISTS laBD;

USE laBD;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS users;
                     
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `release_date` datetime NULL, -- to check which edition has this book
  `abstract` varchar(255) NULL, 
  `photo_front` blow NULL,
  `photo_back` blow NULL,
  `language` varchar(20) NOT NULL,
  `page` INT NULL,
  `quantity` INT NULL,
  `country` varchar(50) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `loans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `cashier_loan_id` int NULL, -- who loans the book
  `cashier_return_id` int NULL, -- who receives the book
  `books_id` int NOT NULL,
  `comments` varchar(255) NULL,
  `loan_date` datetime NULL, -- when user get the book
  `return_date` datetime NULL, -- when user return the book
  PRIMARY KEY (`id`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`employee_id`, `user_type`, `email`, `username`, `password`) VALUES
                   (NULL, 'SUPER ADMIN', 'correo@correo.com', 'admin', 'admin'),
                   (1, 'NORMAL', 'correo@correo.com', 'robin', 'robin'),
                   (2, 'ADMIN', 'correo@correo.com', 'taylor', 'taylor'),
                   (3, 'ADMIN', 'correo@correo.com', 'vivian', 'vivian'),
                   (4, 'NORMAL', 'correo@correo.com', 'harry', 'harry'),
                   (7, 'ADMIN', 'correo@correo.com', 'melinda', 'melinda'),
                   (8, 'NORMAL', 'correo@correo.com', 'harley', 'harley');
                   
/**https://www.sba.gov/sites/default/files/resources_article/Database%20Design%20Standards.pdf

Pendientes:
Un autor por libro ?
una editorial por libro ?
libro ecologico ?
roles 
Poner isbn unico
algoritmo para hacer recomendaciones
CLUB DE LECTURA VIRTUAL
Biblioteca virtual
Penalizaciones
Tabla de configuracion -- libros permitidos x usuario, dias de prestamo permitidos x usuario. $ x dia de retraso


                             
