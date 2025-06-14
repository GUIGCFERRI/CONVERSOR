SELECT 
C000025.CODIGO as codigo,
C000025.CODBARRA AS BARRAS,
C000025.PRODUTO AS DESCRICAO,
C000009.NOME AS FORNECEDOR,
C000025.UNIDADE AS UND,
C000025.DATA_CADASTRO AS CADASTRO,
C000017.GRUPO,
C000025.PRECOCUSTO AS PRECO_CUSTO,
C000025.PRECOVENDA AS PRECO_VENDA,
C000025.ESTOQUE AS QTD,
C000025.DATA_REMARCACAO_VENDA AS ALTERACAO_PRECO,
C000025.CSOSN AS ST,
--SUBSTRING (C000025.CST FROM 1 FOR 1) AS OST,
--SUBSTRING (C000025.CST FROM 2 FOR 3) AS ST,
C000025.CLASSIFICACAO_FISCAL AS COD_NCM,
--C000025.CEST AS PERSONAL6,
C000019.NOME AS FAMILIA,
C000025.CODigo AS COD_FABRICANTE
FROM C000025
LEFT JOIN C000017 ON C000025.CODGRUPO=C000017.CODIGO
LEFT JOIN C000009 ON C000025.CODFORNECEDOR=C000009.CODIGO
LEFT JOIN C000019 ON C000019.CODIGO = C000025.CODMARCA
WHERE C000025.CODIGO <> 'CODIGO'
