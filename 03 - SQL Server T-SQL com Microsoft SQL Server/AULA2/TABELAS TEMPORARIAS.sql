-- TABELAS TEMPORARIAS

CREATE TABLE #TABELA1 ([ID] INT, [NOME] VARCHAR(50)) -- TABELA VAI EXISTER APENAS NESSA CONEX�O

CREATE TABLE ##TABELA2 ([ID] INT, [NOME] VARCHAR(50)) -- TABELA VAI EXISTE EM OUTRAS CONEX�ES

DECLARE @TABELA3 TABLE ([ID] INT, [NOME] VARCHAR(50)) -- TABELA VAI EXISTE APENAS QUANDO RODAR O SCRIPT 