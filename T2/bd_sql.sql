#-------------------> SITEMAS INTELIGENTES <----------------------------------#

create database if not exists bd_sist_int;
use bd_sist_int;

CREATE TABLE IF NOT EXISTS Cliente (
    IDCliente INT AUTO_INCREMENT NOT NULL,
    Nombre VARCHAR(50) NULL,
    Direccion VARCHAR(50) NULL,
    Telefono VARCHAR(13) NULL,
    Correo VARCHAR(40) NOT NULL,
    Clave VARCHAR(15) NOT NULL,
    Distrito VARCHAR(50) NULL,
    PRIMARY KEY (IDCliente)
) ;

INSERT INTO CLIENTE (nombre,direccion, correo, clave, distrito) VALUES
('MILHOS KASSIAN SIHUAY BARZOLA', 'Joaquin Capello 2486','mi@g.com', '123456', 'Lima'),
('EMERSON GERARDO CAHUANA PEREZ PALMA', 'Direccion3','ge@g.com', '123456', 'Lima');

select * from cliente;
