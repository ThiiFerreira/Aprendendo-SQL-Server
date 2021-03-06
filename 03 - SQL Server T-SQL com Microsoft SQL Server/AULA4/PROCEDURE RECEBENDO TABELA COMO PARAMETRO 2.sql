CREATE TYPE	ListaDatas AS TABLE(
	DATANOTA DATE
)


CREATE PROCEDURE ListaNumeroNotas
@ListaDatas AS ListaDatas READONLY 
AS
SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS]
WHERE DATA IN (SELECT DATANOTA FROM @ListaDatas)
GROUP BY DATA


DECLARE @ListaDatas AS ListaDatas
INSERT INTO @ListaDatas (DATANOTA) VALUES ('20150303'),('20160605'),('20170427')
EXEC ListaNumeroNotas @ListaDatas = @ListaDatas