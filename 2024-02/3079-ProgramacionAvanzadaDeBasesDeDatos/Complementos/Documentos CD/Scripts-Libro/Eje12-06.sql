USE QhatuPERU
go

CREATE PROCEDURE usp_ProveedoresArticulo
	@articulo integer
AS
SET NOCOUNT ON;
SELECT PROVEEDOR.CodProveedor,
		PROVEEDOR.NomProveedor
	FROM PROVEEDOR INNER JOIN ARTICULO
		ON PROVEEDOR.CodProveedor = ARTICULO.CodProveedor
	WHERE ARTICULO.CodArticulo = @articulo;
IF @@ROWCOUNT = 0
	RAISERROR('No existe el art�culo o no hay proveedores para el art�culo', 16, 1);
go

EXECUTE usp_ProveedoresArticulo 217
go

	
