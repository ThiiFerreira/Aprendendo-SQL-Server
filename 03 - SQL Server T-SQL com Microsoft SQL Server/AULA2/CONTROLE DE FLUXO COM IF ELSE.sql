select getdate()
select datename(weekday, dateadd(day,6,getdate()))

DECLARE @DIA_SEMANA VARCHAR(20)
DECLARE @NUMERO_DIAS INT

SET @NUMERO_DIAS = 9

SET @DIA_SEMANA = datename(weekday, dateadd(day,@NUMERO_DIAS,getdate()))

PRINT @DIA_SEMANA
IF @DIA_SEMANA = 'Domingo' OR @DIA_SEMANA = 'Sábado'
	PRINT 'Este dia é fim de semana'
ELSE 
	PRINT 'Este dia é dia de semana'


-- Crie um script que, baseado em uma data, conte o número de notas fiscais.
-- Se houver mais de 70 notas, exiba a mensagem "Muita nota". Se não, exiba a
-- mensagem "Pouca nota". Exiba também o número de notas.

DECLARE @QTDNOTAS INT
DECLARE @DATANOTA DATE
SET @DATANOTA = '20170102'
PRINT @DATA

SELECT @QTDNOTAS = COUNT (*) FROM [NOTAS FISCAIS] WHERE DATA = @DATANOTA

IF @QTDNOTAS > 70
	PRINT 'Muita nota'
ELSE 
	PRINT 'Pouca nota'
