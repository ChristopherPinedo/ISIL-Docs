USE Pruebas
go
-- Esta base de datos la creamos
-- en el cap�tulo 11 del libro

CREATE TABLE PruebaThrow(
	Col1 integer PRIMARY KEY)
go

BEGIN TRY
	SET NOCOUNT ON
	INSERT INTO PruebaThrow VALUES(1)
	-- Forzamos un error de violaci�n de clave primaria
	INSERT INTO PruebaThrow VALUES(2)
END TRY
BEGIN CATCH
	PRINT 'THROW en el bloque CATCH';
	-- la instrucci�n anterior a THROW
	-- debe tener el ; de finalizaci�n de sentencia
	THROW
END CATCH

