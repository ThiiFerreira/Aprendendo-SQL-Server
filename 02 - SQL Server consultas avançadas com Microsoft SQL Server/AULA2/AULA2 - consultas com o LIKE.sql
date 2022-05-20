SELECT * FROM [TABELA DE PRODUTOS]

SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%' -- vai buscar todos os dados que tem "Litros" no nome

SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE 'Litros%' -- vai buscar todos os dados que tem "Litros" no começo do nome

SELECT * FROM [TABELA DE PRODUTOS] WHERE [NOME DO PRODUTO] LIKE '%Litros%' AND [SABOR] = 'Laranja'  -- vai buscar todos os dados que tem "Litros" no nome e o sabor "Laraja"

SELECT * FROM [TABELA DE CLIENTES] WHERE [NOME] LIKE '%Mattos' -- busca todos os clientes que tem o sobrenome Mattos