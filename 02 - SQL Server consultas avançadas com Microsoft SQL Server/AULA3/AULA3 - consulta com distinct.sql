-- Consultas com DISTINCT
-- vai selecionar apenas uma ocorrencia de cada combinação EMBALAGEM e PRODUTO
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] 

-- vai selecionar apenas uma ocorrencia de cada combinação EMBALAGEM e PRODUTO onde o SABOR for Laranja
SELECT DISTINCT EMBALAGEM, TAMANHO FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Laranja'

-- vai selecionar apenas uma ocorrencia de cada combinação EMBALAGEM, PRODUTO e SABOR
SELECT DISTINCT EMBALAGEM, TAMANHO, SABOR FROM [TABELA DE PRODUTOS]  

--Quantos bairros diferentes da cidade do Rio de Janeiro possuem clientes?
SELECT DISTINCT CIDADE, BAIRRO FROM [TABELA DE CLIENTES] WHERE CIDADE = 'Rio de Janeiro'