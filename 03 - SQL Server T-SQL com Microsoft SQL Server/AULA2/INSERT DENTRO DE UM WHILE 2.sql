
IF OBJECT_ID('TABELA DE DATA_NOTAS', 'U') IS NOT NULL
	DROP TABLE [TABELA DE DATA_NOTAS] -- verifica se a tabela ja existe e apaga 

CREATE TABLE [TABELA DE DATA_NOTAS] ([DATA] DATE, [QTDNOTAS] INT)

DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT
SET @DATAINICIAL = '20170101'
SET @DATAFINAL = '20170110'
WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
        WHERE DATA = @DATAINICIAL
	INSERT INTO [TABELA DE DATA_NOTAS] ([DATA], [QTDNOTAS]) VALUES (@DATAINICIAL,@NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END

select * from [TABELA DE DATA_NOTAS]

