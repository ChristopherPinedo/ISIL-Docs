USE Northwind
go

SELECT SupplierID, CompanyName, Address,
	Phone, City, Country
FROM Suppliers
UNION
SELECT IdProveedor, Nombre, Direccion,
	Telefono, Ciudad, 'Per�'
FROM MarketPERU..Proveedor
go
