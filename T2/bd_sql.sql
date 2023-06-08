#-------------------> SITEMAS INTELIGENTES <----------------------------------#

create database if not exists bd_sist_int;
use bd_sist_int;

CREATE TABLE Empleados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  edad INT,
  salario FLOAT
);

CREATE TABLE Clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  direccion VARCHAR(200),
  email VARCHAR(100)
);

CREATE TABLE Productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  precio FLOAT,
  stock INT
);

# --- INSERTAR DATOS

INSERT INTO Empleados (nombre, edad, salario) VALUES
  ('Juan Pérez', 30, 2500),
  ('María Gómez', 35, 3000),
  ('Pedro Rodríguez', 28, 2000);

INSERT INTO Clientes (nombre, direccion, email) VALUES
  ('Ana López', 'Calle 123', 'ana@email.com'),
  ('Luis Ramírez', 'Avenida 456', 'luis@email.com');

INSERT INTO Productos (nombre, precio, stock) VALUES
  ('Producto 1', 10, 50),
  ('Producto 2', 20, 100),
  ('Producto 3', 15, 75);
  
  
  # --------- Crear procedimientos almacenados para operaciones CRUD
  
  DELIMITER //

CREATE PROCEDURE InsertarEmpleado(
  IN nombre_param VARCHAR(100),
  IN edad_param INT,
  IN salario_param FLOAT
)
BEGIN
  INSERT INTO Empleados (nombre, edad, salario) VALUES (nombre_param, edad_param, salario_param);
END //

CREATE PROCEDURE ListarEmpleados()
BEGIN
  SELECT * FROM Empleados;
END //

CREATE PROCEDURE ActualizarEmpleado(
  IN id_param INT,
  IN nombre_param VARCHAR(100),
  IN edad_param INT,
  IN salario_param FLOAT
)
BEGIN
  UPDATE Empleados SET nombre = nombre_param, edad = edad_param, salario = salario_param WHERE id = id_param;
END //

CREATE PROCEDURE EliminarEmpleado(IN id_param INT)
BEGIN
  DELETE FROM Empleados WHERE id = id_param;
END //

DELIMITER ;

  