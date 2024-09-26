USE QhatuPERU
go

CREATE PROCEDURE usp_GuiasFechaTienda
	@tienda varchar(20),
	@a�o smallint,
	@mes smallint
AS
SET NOCOUNT ON;
SELECT GUIA_ENVIO.NumGuia,
	GUIA_ENVIO.FechaSalida,
	GUIA_ENVIO.CodTienda
FROM TIENDA INNER JOIN GUIA_ENVIO
	ON TIENDA.CodTienda = GUIA_ENVIO.CodTienda
WHERE TIENDA.Distrito = @tienda
	AND YEAR(GUIA_ENVIO.FechaSalida) = @a�o
	AND MONTH(GUIA_ENVIO.FechaSalida) = @mes;
go

--  entrega de par�metros por posici�n
DECLARE @laTienda varchar(20)
DECLARE @elA�o smallint, @elMes smallint
SET @laTienda = 'Pueblo Libre'
SET @elA�o = 2013
SET @elMes = 3
EXEC usp_GuiasFechaTienda @laTienda, @elA�o, @elMes
go

-- entrega de par�metros por posici�n
EXEC usp_GuiasFechaTienda 'Pueblo Libre', 2013, 3
go

-- entrega de par�metros por referencia
EXEC usp_GuiasFechaTienda
	@a�o = 2013,
	@mes = 3,
	@tienda = 'Pueblo Libre'
go


