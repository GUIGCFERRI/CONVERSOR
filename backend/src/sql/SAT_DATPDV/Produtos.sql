SELECT
    CODIGO AS CODIGO,
    COD_BARRA AS BARRAS,
    NOME AS DESCRICAO,
    UNIDADE AS UND,
    ESTOQUE AS QTD,
    PRECO_VENDA AS PRECO_VENDA,
    PRECO_ATACADO AS PRECO_ATACADO,
    aliquota AS ELO,
    ORIGEM AS OST,
    --SUBSTRING (CST FROM 1 FOR 1) AS OST,
    --SUBSTRING (CST FROM 2 FOR 3) AS ST,
    SUBSTRING (CST FROM 2 FOR 3) AS PERSONAL2,
    CSOSN AS ST,
    ESTOQUE AS QTD,
    REFERENCIA AS COD_FABRICANTE,
    NCM AS COD_NCM,
    CEST AS PERSONAL6
    --CSOSN
FROM ESTOQUE