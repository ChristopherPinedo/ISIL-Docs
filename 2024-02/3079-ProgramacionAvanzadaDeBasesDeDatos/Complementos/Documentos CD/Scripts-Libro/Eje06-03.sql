USE QhatuPERU
go

SELECT	AVG(PrecioProveedor) AS 'Promedio',
		STDEV(PrecioProveedor) AS 'Desviaci�n est�ndar',
		STDEVP(PrecioProveedor) AS 'Desviaci�n est�ndar poblaci�n',
		VAR(PrecioProveedor) AS 'Varianza',
		VARP(PrecioProveedor) AS 'Varianza poblaci�n'
FROM ARTICULO
go