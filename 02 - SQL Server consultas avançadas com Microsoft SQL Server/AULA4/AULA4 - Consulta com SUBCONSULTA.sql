-- sub consultas

-- Consulta os bairros dos clientes que existem na tabela vendedores
SELECT NOME, BAIRRO FROM [TABELA DE CLIENTES]
WHERE BAIRRO IN ( SELECT BAIRRO FROM [TABELA DE VENDEDORES])

SELECT EMBALAGEM, MAX([PREÇO DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM
-- consulta com sub consulta
SELECT *
FROM (SELECT EMBALAGEM, MAX([PREÇO DE LISTA]) AS MAX_PRECO FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM) NOVA_CONSULTA
WHERE NOVA_CONSULTA.MAX_PRECO <= 5


--Qual seria a consulta, usando sub-consulta, que seria equivalente a:
SELECT CPF, COUNT(*) FROM [NOTAS FISCAIS]
WHERE YEAR(DATA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000

-- consulta equivalente
select * 
from (SELECT CPF, COUNT(*) as quantidade_compras FROM [NOTAS FISCAIS] WHERE YEAR(DATA) = 2016 group by CPF) NOVA_CONSULTA
where NOVA_CONSULTA.quantidade_compras > 2000
