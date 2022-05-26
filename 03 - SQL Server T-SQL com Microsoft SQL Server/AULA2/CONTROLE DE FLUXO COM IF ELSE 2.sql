-- em um cenario onde cada bairro tenha um limite maximo de credito
select SUM([LIMITE DE CREDITO]) from [TABELA DE CLIENTES] where BAIRRO = 'Água santa'

DECLARE @LIMITE_MAXIMO FLOAT
DECLARE @BAIRRO VARCHAR(20)

SET @BAIRRO = 'Água Santa'
SET @LIMITE_MAXIMO = 400000

IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO)
	BEGIN
		PRINT 'Valor estourou. Não é possivel abrir novos créditos'
	END
ELSE
	BEGIN
		PRINT 'Valor não estourou. É possivel abrir novos créditos'
	END
