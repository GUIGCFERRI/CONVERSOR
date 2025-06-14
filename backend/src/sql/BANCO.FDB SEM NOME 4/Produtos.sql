SELECT PRODUTO.PRODICOD AS CODIGO,
PRODUTO.PRODA60CODBAR AS BARRAS,
PRODUTO.PRODA60DESCR AS DESCRICAO,
UNIDADE.UNIDA5DESCR AS UND,
PRODUTO.PRODISITTRIB AS ST,
PRODUTO.PRODN3VLRVENDA AS PRECO_VENDA,
PRODUTO.PRODN3VLRCUSTO AS PRECO_CUSTO,
PRODUTO.PRODN3VLRCUSTOMED AS CUSTO_MEDIO,
NCM.NCMA30CODIGO AS COD_NCM,
PRODUTO.TABCEST AS PERSONAL6,
GRUPO.GRUPA60DESCR AS GRUPO,
PRODUTOSALDO.PSLDN3QTDE AS QTD
FROM PRODUTO
LEFT JOIN UNIDADE ON PRODUTO.UNIDICOD=UNIDADE.UNIDICOD
LEFT JOIN NCM ON PRODUTO.NCMICOD=NCM.NCMICOD
LEFT JOIN GRUPO ON PRODUTO.GRUPICOD=GRUPO.GRUPICOD
LEFT JOIN PRODUTOSALDO ON PRODUTO.PRODICOD=PRODUTOSALDO.PRODICOD
