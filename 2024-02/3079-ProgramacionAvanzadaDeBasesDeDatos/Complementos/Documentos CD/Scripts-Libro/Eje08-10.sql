USE QhatuPERU
go

SELECT CodArticulo, DescripcionArticulo,
	'Acci�n a tomar' = CASE
		WHEN StockActual <= StockMinimo THEN 'URGENTE: Colocar pedido'
		WHEN StockActual < StockMinimo * 1.1 THEN 'Stock cerca al m�nimo'
		ELSE 'Stock adecuado'
	END
FROM ARTICULO
go
