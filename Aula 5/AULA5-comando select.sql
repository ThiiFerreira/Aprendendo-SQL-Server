SELECT * FROM [TABELA DE CLIENTES] -- SELECIONANDO TODOS OS DADOS DA TABELA

SELECT [CPF]
      ,[NOME]
  FROM [TABELA DE CLIENTES] -- SELECIONANDO APENAS OS CAMPOS CPF E NOME DA TABELA

  SELECT [CPF] AS IDENTIFICADOR -- MUDANDO O NOME QUE VAI APARECER NO CAMPO DA QUERY
      ,[NOME]
  FROM [TABELA DE CLIENTES]

SELECT * FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1000889' -- FILTRANDO O SELECT PELO CODIGO DO PRODUTO

SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Uva' -- FILTRANDO O SELECT PELO SABOR

SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Lim�o' -- FILTRANDO O SELECT PELO SABOR

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM = 'PET'

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] > 10 -- FILTRANDO O SELECT POR PRODUTO MAIS CARO QUE VALOR X

SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] < 5 -- FILTRANDO O SELECT POR PRODUTO MAIS CARO QUE VALOR X

SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM <> 'PET' -- FILTRANDO O SELECT POR EMBALAGEM DIFERENTES DE PET

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1995-09-11' -- FILTRANDO O SELECT POR DATA DE NASCIMENTO

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1995-09-11' -- FILTRANDO O SELECT POR DATA DE NASCIMENTO

SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11' -- FILTRANDO O SELECT POR DATA DE NASCIMENTO

SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995 -- USANDO FUN��O PARA FILTRAR POR ANO
SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) <= 1995

SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) = 9 -- FILTRANDO POR MES

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 11 -- FILTRANDO POR DIA