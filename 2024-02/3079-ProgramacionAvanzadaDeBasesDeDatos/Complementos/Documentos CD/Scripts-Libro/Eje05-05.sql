SELECT	CodArticulo AS C�digo,
		DescripcionArticulo AS Descripci�n,
		Presentacion AS Unidad,
		PrecioProveedor AS 'Precio unitario'
FROM ARTICULO
go

SELECT	C�digo = CodArticulo,
		Descripci�n = DescripcionArticulo,
		Unidad = Presentacion,
		'Precio unitario' = PrecioProveedor
FROM ARTICULO
go

SELECT	CodArticulo C�digo,
		DescripcionArticulo Descripci�n,
		Presentacion Unidad,
		PrecioProveedor 'Precio unitario'
FROM ARTICULO
go

	


	


