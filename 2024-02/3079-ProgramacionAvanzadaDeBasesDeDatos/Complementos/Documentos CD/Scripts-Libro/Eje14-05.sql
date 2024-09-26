USE Test
go

-- Creaci�n de las tablas PROVEEDOR y CLIENTE
CREATE TABLE Proveedor(
	idProveedor char(5) PRIMARY KEY,
	nombre varchar(30) not null,
	telefono varchar(20) null )
go

INSERT INTO Proveedor
	VALUES('P0001', 'Juan Castro Arenas', '4512345')
INSERT INTO Proveedor
	VALUES('P0002', 'Ernesto Rosado Alb�n', '3491234')
INSERT INTO Proveedor
	VALUES('P0003', 'Roc�o S�nchez Alania', '99871234')
go

CREATE TABLE Cliente(
	idCliente char(5) PRIMARY KEY,
	nombre varchar(30) not null,
	telefono varchar(20) null )
go

INSERT INTO Cliente
	VALUES('C0001', 'Rosa Quiroga Zavala', '4234567')
INSERT INTO Cliente
	VALUES('C0002', 'Ra�l Aliaga Aliaga', '4516789')
INSERT INTO Cliente
	VALUES('C0003', 'Bertha Asencios Rom�n', '3481234')
go

-- Creaci�n de una vista que une las tablas
-- PROVEEDOR y CLIENTE
CREATE VIEW v_Usuarios
AS
SELECT IdProveedor AS IdUsuario, Nombre, Telefono
	FROM Proveedor
UNION
SELECT IdCliente, Nombre, Telefono
	FROM Cliente
go

SELECT * FROM v_Usuarios
go



