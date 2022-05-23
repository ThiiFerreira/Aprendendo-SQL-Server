-- COMANDO UNION

-- uni os resultados das consultas, caso tiver o mesmo dado nas consultas no UNION não será repetido
SELECT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]
UNION
SELECT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]

-- com o UNION ALL caso tiver o mesmo dado nas consultas no UNION ALL será repetido
SELECT [TABELA DE VENDEDORES].BAIRRO FROM [TABELA DE VENDEDORES]
UNION all
SELECT [TABELA DE CLIENTES].BAIRRO FROM [TABELA DE CLIENTES]

--Para usar o UNION os dados da coluna tem que ser do mesmo tipo, exemplo de uma cunsulta que dará errado
--por causa da divergencia nos tipos
SELECT [TABELA DE VENDEDORES].BAIRRO, [TABELA DE VENDEDORES].NOME FROM [TABELA DE VENDEDORES]
UNION 
SELECT [TABELA DE CLIENTES].BAIRRO, [TABELA DE CLIENTES].[DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES]