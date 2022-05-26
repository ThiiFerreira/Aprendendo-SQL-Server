-- em um cenario onde cada bairro tenha um limite maximo de credito
select SUM([LIMITE DE CREDITO]) from [TABELA DE CLIENTES] where BAIRRO = '�gua santa'

DECLARE @LIMITE_MAXIMO FLOAT
DECLARE @BAIRRO VARCHAR(20)

SET @BAIRRO = '�gua Santa'
SET @LIMITE_MAXIMO = 400000

IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO)
	BEGIN
		PRINT 'Valor estourou. N�o � possivel abrir novos cr�ditos'
	END
ELSE
	BEGIN
		PRINT 'Valor n�o estourou. � possivel abrir novos cr�ditos'
	END
