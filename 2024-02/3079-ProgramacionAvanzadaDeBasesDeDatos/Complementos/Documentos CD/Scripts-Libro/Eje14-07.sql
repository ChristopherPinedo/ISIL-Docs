USE Test
go

-- Ver la definici�n de un desencadenante
SELECT definition 
FROM sys.sql_modules
WHERE object_id = OBJECT_ID('tg_Update_DetalleFactura')
go

SELECT OBJECT_DEFINITION (OBJECT_ID('tg_Update_DetalleFactura'))
go

sp_helptext 'tg_Update_DetalleFactura'
go
