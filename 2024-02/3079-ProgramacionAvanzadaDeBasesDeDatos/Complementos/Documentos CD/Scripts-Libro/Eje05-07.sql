USE QhatuPERU
go

SELECT CodTienda, 
	Direccion + ' - ' + Distrito AS Ubicaci�n
FROM TIENDA
go
