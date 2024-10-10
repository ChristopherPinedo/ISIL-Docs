USE Supermercados;

/* Consulta OUTER JOIN
Una consulta INNER JOIN combina filas las filas relacionadas
de 2 conjuntos de datos.
Una consulta OUTER JOIN se utiliza para averiguar qu�
filas del primer conjunto NO TIENEN RELACI�N con el
segundo conjunto.
*/

-- Las tablas GUIA y GUIA_DETALLE registran las salidas
-- de productos del almac�n.
-- Se desea obtener una lista de los productos que
-- a la fecha no registran salida del almac�n.
SELECT PRODUCTO.IdProducto, PRODUCTO.Nombre
FROM PRODUCTO LEFT OUTER JOIN GUIA_DETALLE
	ON PRODUCTO.IdProducto = GUIA_DETALLE.IdProducto
WHERE GUIA_DETALLE.Cantidad IS NULL;








