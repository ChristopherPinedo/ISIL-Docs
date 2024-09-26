USE QhatuPERU
go

SELECT * FROM LINEA
SELECT * FROM ARTICULO
go

-- Eliminando la clave for�nea de la tabla ARTICULO
-- para volverla a crear
-- estableciendo la eliminaci�n en cascada
ALTER TABLE ARTICULO
	DROP CONSTRAINT FK_Articulo_Linea
go

ALTER TABLE ARTICULO
	ADD CONSTRAINT FK_Articulo_Linea
	FOREIGN KEY( CodLinea )
	REFERENCES LINEA
	ON DELETE CASCADE
go

-- Eliminando la l�nea 1
DELETE FROM LINEA
	WHERE CodLinea = 1
go

SELECT * FROM LINEA
SELECT * FROM ARTICULO
go




