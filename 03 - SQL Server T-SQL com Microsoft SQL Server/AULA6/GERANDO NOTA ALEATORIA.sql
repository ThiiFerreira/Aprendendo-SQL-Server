-- GERANDO UMA NOTA ALEATORIA

DECLARE @CLIENTE VARCHAR(20),
		@VENDEDOR VARCHAR(20),
		@PRODUTO VARCHAR(20),
		@DATA DATE,
		@NUMERO INT,
		@IMPOSTO FLOAT,
		@NUM_ITENS INT,
		@CONTADOR INT,
		@QUANTIDADE INT,
		@PRECO FLOAT;

SET @DATA = '20220531'
SET @CLIENTE = [dbo].[EntidadeAleatoria] ('CLIENTE')
SET @VENDEDOR = [dbo].[EntidadeAleatoria] ('VENDEDOR')

SELECT @NUMERO = MAX(NUMERO) + 1 FROM [NOTAS FISCAIS]
SET @CONTADOR = 1
SET @IMPOSTO = 0.18
SET @NUM_ITENS = [dbo].[NumeroAleatorio](2,10)

PRINT @DATA -- DATA DA NOTA
PRINT @CLIENTE --  CPF CLIENTE
PRINT @VENDEDOR -- MATRICULA VENDEDOR
PRINT @IMPOSTO 
PRINT @NUMERO --  NUMERO DA NOTA
PRINT ''
PRINT 'ITENS'
WHILE @CONTADOR <= @NUM_ITENS
BEGIN
	SET @PRODUTO = [dbo].[EntidadeAleatoria] ('PRODUTO')
	SET @QUANTIDADE = [dbo].[NumeroAleatorio](5,100)
	SELECT @PRECO = [PRE�O DE LISTA] FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = @PRODUTO
	PRINT @NUMERO
	PRINT @PRODUTO
	PRINT @QUANTIDADE
	PRINT @PRECO
	PRINT ''
	SET @CONTADOR = @CONTADOR + 1
END
