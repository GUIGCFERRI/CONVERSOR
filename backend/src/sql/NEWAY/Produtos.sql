SELECT
    I.ID_ITEM AS CODIGO,
    I.DESCRICAO,
    I.UNIDADE AS UND,
    I.PRECO1 AS PRECO_VENDA,
    I.COD_BARRA AS BARRAS,
    REPLACE (NCM, '.','')AS COD_NCM,
    I.PRECO_CUSTO,
    I.CST_SAIDA AS ST,
    I.DATA_ULTIMA_VENDA AS ULTIMA_VENDA,
    I.CEST AS PERSONAL6,
    SI.saldo_estoque AS QTD
FROM ITEM I
LEFT JOIN SALDO_ITEM SI ON I.id_item = SI.id_item