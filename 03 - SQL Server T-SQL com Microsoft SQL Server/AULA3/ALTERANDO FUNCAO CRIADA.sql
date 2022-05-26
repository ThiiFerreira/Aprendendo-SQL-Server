-- ALTERANDO UMA FUN�AO CRIADA

CREATE FUNCTION EnderecoCompleto( -- CRIANDO UMA FUNCAO
@ENDERECO VARCHAR(100),
@CIDADE VARCHAR(50),
@ESTADO VARCHAR(50),
@CEP VARCHAR(20)
) RETURNS VARCHAR(250)
AS
BEGIN
	DECLARE @ENDERECO_COMPLETO VARCHAR(250)
	SET @ENDERECO_COMPLETO = @ENDERECO + ' - ' + @CIDADE + ' - ' + @ESTADO + ' - ' + @CEP
	RETURN @ENDERECO_COMPLETO
END


SELECT CPF, [dbo].[EnderecoCompleto]([ENDERECO 1],CIDADE,ESTADO,CEP) AS END_COMPLETO 
FROM [TABELA DE CLIENTES]

ALTER FUNCTION EnderecoCompleto( -- ALTERANDO A FUNCAO CRIADA ACIMA
@ENDERECO VARCHAR(100),
@CIDADE VARCHAR(50),
@ESTADO VARCHAR(50),
@CEP VARCHAR(20)
) RETURNS VARCHAR(250)
AS
BEGIN
	DECLARE @ENDERECO_COMPLETO VARCHAR(250)
	SET @ENDERECO_COMPLETO = @ENDERECO + ' , ' + @CIDADE + ' ,' + @ESTADO + ' , ' + @CEP
	RETURN @ENDERECO_COMPLETO
END

SELECT CPF, [dbo].[EnderecoCompleto]([ENDERECO 1],CIDADE,ESTADO,CEP) AS END_COMPLETO 
FROM [TABELA DE CLIENTES]


SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS] 
    WHERE DATA >= '20170101' AND DATA <= '20170110'
GROUP BY DATA

ALTER FUNCTION FuncTabelaNotas (@DATA_INICIO DATE, @DATA_FIM DATE) RETURNS TABLE
AS
RETURN SELECT DATA, COUNT(*) AS NUMERO FROM [NOTAS FISCAIS] 
		WHERE DATA >= @DATA_INICIO AND DATA <= @DATA_FIM
		GROUP BY DATA

-- FOI ALTERADO COMO EXEMPLO MAS RETORNA O MESMO VALOR
--ALTER FUNCTION FuncTabelaNotas (@DATA_INICIO DATE, @DATA_FIM DATE) RETURNS TABLE
--AS
--RETURN SELECT DISTINCT DATA, [dbo].[NUMERONOTAS](DATA) AS NUMERO 
--    FROM [NOTAS FISCAIS] WHERE DATA >= @DATA_INICIO
--        AND DATA <= @DATA_FIM