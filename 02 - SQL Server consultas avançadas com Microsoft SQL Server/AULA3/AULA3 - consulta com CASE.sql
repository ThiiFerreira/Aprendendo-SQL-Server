-- comando CASE
-- COLOCA CONDI�ES DENTRO DO SELECT
SELECT [NOME DO PRODUTO],
CASE WHEN [PRE�O DE LISTA] >=12 THEN 'PRODUTO CARO'
WHEN [PRE�O DE LISTA] >=7 AND [PRE�O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
ELSE 'PRODUTO BARATO' END
FROM 
[TABELA DE PRODUTOS]


--Veja o ano de nascimento dos clientes e classifique-os como: nascidos antes de 1990 s�o adultos,
--nascidos entre 1990 e 1995 s�o jovens e nascidos depois de 1995 s�o crian�as.
--Liste o nome do cliente e esta classifica��o.

SELECT NOME,
CASE
	WHEN YEAR([DATA DE NASCIMENTO])<1990 THEN 'ADULTO'
	WHEN YEAR([DATA DE NASCIMENTO]) >= 1990 AND YEAR([DATA DE NASCIMENTO])<=1995 THEN 'JOVEM'
	ELSE 'CRIAN�A'
END
FROM [TABELA DE CLIENTES]



