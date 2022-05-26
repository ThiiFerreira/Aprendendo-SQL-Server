DECLARE @limite_minimo int, @limite_maximo int, @limite_break int

SET @limite_minimo = 1
SET @limite_maximo = 10
SET @limite_break = 8

while @limite_minimo <= @limite_maximo

begin
	PRINT @limite_minimo
	set @limite_minimo = @limite_minimo + 1
	if @limite_minimo = @limite_break
	begin
		print 'Saindo por causa do break'
		break
	end
end

DECLARE @DATAINICIAL DATE, @DATAFINAL DATE, @QTDNOTAS INT
SET @DATAINICIAL = '20170101' 
SET @DATAFINAL = '20170110'


WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @QTDNOTAS = COUNT(*) FROM [NOTAS FISCAIS] WHERE DATA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' TEVE ' + CONVERT(VARCHAR(10), @QTDNOTAS) + ' NOTAS'
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END

