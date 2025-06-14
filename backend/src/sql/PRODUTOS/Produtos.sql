SELECT
    PRODUTO.COD_PRODUTO AS CODIGO,
    PRODUTO.COD_BARRAS AS BARRAS,
    PRODUTO.NOM_PRODUTO AS DESCRICAO,
    PRODUTO.UNIDADE AS UND,
    SECAO.SECDES AS GRUPO,
    PRODUTO.NCM AS COD_NCM,
    PRODUTO.CSOSN AS ST,
    PRODUTO.PROCEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN SECAO ON PRODUTO.SECAO = SECAO.SECCOD