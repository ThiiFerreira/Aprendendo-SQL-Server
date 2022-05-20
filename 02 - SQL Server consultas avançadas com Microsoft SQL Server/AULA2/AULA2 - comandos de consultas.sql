SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [TAMANHO] = '700 ml' -- traz onde o sabor for manga ou o tamanho for 700 ml

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND [TAMANHO] = '700 ml' -- traz onde o sabor for manga e o tamanho for 700 ml

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' AND [TAMANHO] = '700 ml') -- traz onde n�o for manga e tamanho 700 ml

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [TAMANHO] = '700 ml') -- traz onde for manga ou 700 ml

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' AND NOT ( [TAMANHO] = '700 ml') -- traz onde for manga e qualquer tamanho menos 700 ml

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') -- In traz todos os dados que forem manga ou laranja

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] = 'Manga' OR [SABOR] ='Laranja' -- mesma coisa do comando de cima

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] NOT IN ('Manga', 'Laranja') -- Not In n�o traz nenhum dado onde o sabor for manga ou laranja

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
NOT ([SABOR] = 'Manga' OR [SABOR] ='Laranja')  -- mesma coisa do comando de cima

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRE�O DE LISTA] > 10 -- traz onde o sabor for manga ou laranja com o pre�o acima de 10

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRE�O DE LISTA] BETWEEN 10 AND 13  -- traz onde o sabor for manga ou laranja e o pre�o estiver entre 10 e 13

SELECT * FROM [TABELA DE PRODUTOS] WHERE 
[SABOR] IN ('Manga', 'Laranja') AND [PRE�O DE LISTA] >= 10 AND [PRE�O DE LISTA] <= 13 -- mesma coisa do comando de cima
