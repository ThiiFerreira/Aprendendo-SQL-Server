select getdate()
select datename(weekday, dateadd(day,6,getdate()))

DECLARE @DIA_SEMANA VARCHAR(20)
DECLARE @NUMERO_DIAS INT

SET @NUMERO_DIAS = 9

SET @DIA_SEMANA = datename(weekday, dateadd(day,@NUMERO_DIAS,getdate()))

PRINT @DIA_SEMANA
IF @DIA_SEMANA = 'Domingo' OR @DIA_SEMANA = 'S�bado'
	PRINT 'Este dia � fim de semana'
ELSE 
	PRINT 'Este dia � dia de semana'


-- Crie um script que, baseado em uma data, conte o n�mero de notas fiscais.
-- Se houver mais de 70 notas, exiba a mensagem "Muita nota". Se n�o, exiba a
-- mensagem "Pouca nota". Exiba tamb�m o n�mero de notas.

DECLARE @QTDNOTAS INT
DECLARE @DATANOTA DATE
SET @DATANOTA = '20170102'
PRINT @DATA

SELECT @QTDNOTAS = COUNT (*) FROM [NOTAS FISCAIS] WHERE DATA = @DATANOTA

IF @QTDNOTAS > 70
	PRINT 'Muita nota'
ELSE 
	PRINT 'Pouca nota'
