SELECT
    PRODUTO.PRO_ID,
    PRODUTO.PRO_CODIGO AS CODIGO,
    PRODUTO.PRO_DESCRICAO AS DESCRICAO,
    PRODUTO.PRO_CODIGO_BARRAS AS BARRAS,
    PRODUTO.PRO_PESO_LIQUIDO AS PESO,
    PRODUTO.PRO_UNIDADE_VENDA AS UND,
    PRODUTO.PRO_UNIDADE_COMPRA AS UND_COMPRA, 
    PRODUTO.PRO_SALDO_ESTOQUE AS QTD,
    PRODUTO.PRO_ESTOQUE_MINIMO AS QTD_IDEAL,
    GRUPO_FISCAL.GFI_CST_VENDA AS ST,
    PRODUTO.PRO_PRECO_COMPRA AS PRECO_CUSTO,
    PRODUTO.PRO_PRECO_VENDA AS PRECO_VENDA,
    PRODUTO.pro_classificacao_fiscal AS COD_NCM,
    PRODUTO.PRO_REFERENCIA AS COD_FABRICANTE,
    PRODUTO.PRO_DATA_CADASTRO AS DATA_CADASTRO,  
    PRODUTO.PRO_DATA_ALT_PRECO AS ALTERACAO_PRECO
FROM PRODUTO
LEFT JOIN GRUPO_FISCAL ON GRUPO_FISCAL.GFI_ID = PRODUTO.GFI_ID
