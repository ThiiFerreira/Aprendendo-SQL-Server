
CREATE TYPE ListaClientes AS TABLE(
	CPF VARCHAR (20) NOT NULL
)

DECLARE @LISTA AS ListaClientes
INSERT INTO @LISTA VALUES ('5576228758'), ('1471156710'),('3623344710')
SELECT * FROM @LISTA

CREATE PROCEDURE FaturamentoCliente2016 -- criado procedure que que vai trazer o faturamento de cada cpf 
@LISTA AS ListaClientes READONLY        -- que estiver na Tabela recebida como parametro
AS
SELECT A.[CPF], A.[NOME], SUM(C.[QUANTIDADE]*C.[PREÇO]) AS FATURAMENTO
FROM [TABELA DE CLIENTES] A
INNER JOIN [NOTAS FISCAIS] B
ON A.CPF = B.CPF AND YEAR(B.DATA) = 2016
INNER JOIN [ITENS NOTAS FISCAIS] C ON B.NUMERO = C.NUMERO
INNER JOIN @LISTA D ON A.CPF = D.CPF
GROUP BY A.CPF, A.NOME

-- execute esse bloco para ver o resultado
DECLARE @LISTA AS ListaClientes
INSERT INTO @LISTA VALUES ('5576228758'), ('1471156710'),('3623344710') -- add os cpf na tabela temporaria
EXEC FaturamentoCliente2016 @LISTA = @LISTA
