SELECT
    ACADPROD.COD_PRODUTO AS CODIGO,
    ACADPROD.DESCRICAO AS DESCRICAO,
    ACADPROD.CODBARRAS AS BARRAS,
    ACADPROD.UNIDADE AS UND,
    ACADPROD.PESOLIQ AS PESO,
    ACADGERAL.razaosocial AS FORNECEDOR,
    ACADPROD.SITORIGEM AS OST,
    MIN (TABICMS.sit_tributariaci) AS ST,
    ACADPROD.SALDOESTOQUE AS QTD,
    ACADPROD.QTDEMIN AS QTD_IDEAL,
    PRECOSPRODUTO.perc_lucro AS MARGEM_LUCRO,
    PRECOSPRODUTO.precolista AS PRECO_VENDA,
    ACADPROD.CUSTOLIQ AS CUSTO_COMPRA,
    ACADPROD.DATA_CADASTRO AS DATA_CADASTRO,
    ACADPROD.ULT_ENTRADA AS ULTIMA_COMPRA,
    ACADPROD.ULT_SAIDA AS ULTIMA_VENDA,
    ACADPROD.COD_NCM AS COD_NCM,
    ACADPROD.CEST AS PERSONAL6,
    ACADPROD.ULT_ATUALIZACAO AS ALTERACAO_PRECO
FROM ACADPROD
LEFT JOIN TABICMS ON TABICMS.tabela = ACADPROD.sittrib
LEFT JOIN ACADGERAL ON ACADGERAL.cod_geral = ACADPROD.cod_forn
LEFT JOIN PRECOSPRODUTO ON PRECOSPRODUTO.cod_produto = ACADPROD.cod_produto
GROUP BY 1,2,3,4,5,6,7,9,10,11,12,13,14,15,16,17,18,19
