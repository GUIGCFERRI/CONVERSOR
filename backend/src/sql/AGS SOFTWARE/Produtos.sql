SELECT
    CODI_PRO AS CODIGO,
    CODBAR AS BARRAS,
    DESC_PRO AS DESCRICAO,
    GRUPO AS GRUPO,
    UNID_PRO AS UND,
    CUST_PRO AS PRECO_CUSTO,
    CLFI_PRO AS COD_NCM,
    CEST_PRO AS PERSONAL6,
    AVIS_PRO AS PRECO_VENDA,
    SATUAL AS QTD,
    TRIB_PRO AS ST
    FROM PRO000
    where desc_pro <> ''