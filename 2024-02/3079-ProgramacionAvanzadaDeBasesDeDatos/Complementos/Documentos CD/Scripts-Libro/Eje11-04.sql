USE Pruebas
go

CREATE TABLE PruebaBatch2(
	ColA int PRIMARY KEY,
	ColB char(3) not null )
go

SET IMPLICIT_TRANSACTIONS ON
go

INSERT INTO PruebaBatch2 VALUES(1, 'aaa')
INSERT INTO PruebaBatch2 VALUES(2, 'bbb')
INSERT INTO PruebaBatch2 VALUES(3, 'ccc')
go

SELECT * FROM Pruebabatch2
go

ROLLBACK TRANSACTION
go

SELECT * FROM PruebaBatch2
go

COMMIT TRANSACTION
go

SET IMPLICIT_TRANSACTIONS OFF
go







