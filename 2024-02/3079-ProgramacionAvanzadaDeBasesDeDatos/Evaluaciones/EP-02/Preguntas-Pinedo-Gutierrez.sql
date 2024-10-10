USE GlobalTech;

/* Pregunta 1
�Cu�les son los 3 productos m�s vendidos de la marca Contoso?
*/
SELECT TOP 3
	Producto.nomProducto AS Productos,
	SUM(Ventas.cantidad) AS TotalProductosVendidos
FROM Ventas
JOIN Producto ON Ventas.codProducto = Producto.codProducto
WHERE Producto.marca = 'Contoso'
GROUP BY Producto.nomProducto
ORDER BY TotalProductosVendidos DESC;
GO

/* Pregunta 2
�A qu� subcategor�as y categor�as pertenecen los 3 productos m�s vendidos
de la marca Contoso?
*/
SELECT TOP 3 
    Producto.nomProducto AS Productos, 
    Subcategoria.nomSubcategoria AS Subcategoria,
    Categoria.nomCategoria AS Categoria
FROM Ventas
JOIN Producto ON Ventas.codProducto = Producto.codProducto
JOIN Subcategoria ON Producto.codSubcategoria = Subcategoria.codSubcategoria
JOIN Categoria ON Subcategoria.codCategoria = Categoria.codCategoria
WHERE Producto.marca = 'Contoso'
GROUP BY Producto.nomProducto, Subcategoria.nomSubcategoria, Categoria.nomCategoria
ORDER BY SUM(Ventas.cantidad) DESC;
GO

/* Pregunta 3
�Cu�ntas unidades al mes se han vendido del producto 
Contoso In-Line Coupler E180 Silver?
El resultado se debe mostrar ordenado por mes en forma descendente.
*/
SELECT 
    YEAR(Ventas.fechaPedido) AS A�o, 
    MONTH(Ventas.fechaPedido) AS Mes, 
    SUM(Ventas.cantidad) AS TotalUnidadesVendidas
FROM Ventas
JOIN Producto ON Ventas.codProducto = Producto.codProducto
WHERE Producto.nomProducto = 'Contoso In-Line Coupler E180 Silver'
GROUP BY YEAR(Ventas.fechaPedido), MONTH(Ventas.fechaPedido)
ORDER BY A�o DESC, Mes DESC;
GO

/* Pregunta 4
�Cu�nto es el montoVenta registrado por las ventas realizadas en la regi�n Asia
para los productos de categor�a Audio y subcategor�a Bluetooth Headphones del 
fabricante Northwind Traders?
*/
SELECT 
    Producto.marca AS Marca,
    Categoria.nomCategoria AS Categoria,
    Subcategoria.nomSubcategoria AS Subcategoria,
    Ubicacion.region AS Region,
    SUM(Ventas.montoVenta) AS TotalVenta
FROM Ventas
JOIN Producto ON Ventas.codProducto = Producto.codProducto
JOIN Subcategoria ON Producto.codSubcategoria = Subcategoria.codSubcategoria
JOIN Categoria ON Subcategoria.codCategoria = Categoria.codCategoria
JOIN Ubicacion ON Ventas.codUbicacion = Ubicacion.codUbicacion
WHERE Ubicacion.region = 'Asia'
AND Categoria.nomCategoria = 'Audio'
AND Subcategoria.nomSubcategoria = 'Bluetooth Headphones'
AND Producto.marca = 'Northwind Traders'
GROUP BY 
    Categoria.nomCategoria, 
    Subcategoria.nomSubcategoria, 
    Ubicacion.region,
    Producto.marca;
GO

/* Pregunta 5
�Cu�les fueron los 2 productos m�s vendidos durante la promoci�n 
Asian Spring Promotion del a�o 2013? La respuesta debe mostrar el nombre 
de los productos y el total de unidades vendidas.
*/
SELECT TOP 2 
    Producto.nomProducto AS Producto,
    SUM(Ventas.cantidad) AS TotalVentas
FROM Ventas
JOIN Producto ON Ventas.codProducto = Producto.codProducto
WHERE Ventas.nomPromocion = 'Asian Spring Promotion'
AND YEAR(Ventas.fechaPedido) = 2013
GROUP BY Producto.nomProducto
ORDER BY TotalVentas DESC;
GO

