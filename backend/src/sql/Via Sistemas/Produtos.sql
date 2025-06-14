SELECT
    PRODUTOS.PROCOD AS CODIGO,
    PRODUTOS.PRONOM AS DESCRICAO,
    PRODUTOS.PROBAR AS BARRAS,
    PRODUTOS.PROUND AS UND,
    PRODUTOS.PROFIS AS QTD,
    PRODUTOS.PROMIN AS QTD_IDEAL,
    FORNECEDORES.FORNOM AS FORNECEDOR,
    GRUPOS.GRUNOM AS GRUPO,
    PRODUTOS.PROCOM AS PRECO_CUSTO,
    PRODUTOS.PROLUC AS MARGEM_LUCRO,
    PRODUTOS.PROAVI AS PRECO_VENDA,
    SUBSTRING (PRODUTOS.PROCST FROM 1 FOR 1) AS OST,
    SUBSTRING (PRODUTOS.PROCST FROM 2 FOR 4) AS ST,
    PRODUTOS.CFOCOD AS CF,
    PRODUTOS.PROFAZ AS COD_NCM,
    CAST (PRODUTOS.PROCAD AS DATE) AS DATA_CADASTRO  
FROM PRODUTOS
LEFT JOIN FORNECEDORES ON FORNECEDORES.FORCOD = PRODUTOS.FORCOD
LEFT JOIN GRUPOS ON GRUPOS.GRUCOD = PRODUTOS.GRUCOD
WHERE GRUPOS.EMPCOD = '01'
