-- Consultas com TOP

-- limita o select aos 3 primeiros do topo da consulta
SELECT TOP 3 * FROM [TABELA DE PRODUTOS] 

SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Laranja'

-- limita o select aos 3 primeiros do topo da consulta que tem o SABOR laranja
SELECT TOP 3 * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Laranja' 

-- limita o select aos 3 primeiros do topo da consulta que usou o distinct
SELECT DISTINCT TOP 3 EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] 

--Queremos obter as 10 primeiras vendas do dia 01/01/2017.
--Qual seria o comando SQL para obter este resultado?
select top 10 * from [NOTAS FISCAIS] where DATA = '2017-01-01'