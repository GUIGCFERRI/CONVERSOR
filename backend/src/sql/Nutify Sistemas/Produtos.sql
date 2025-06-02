SELECT
    P.PRO_COD         AS CODIGO,
    P.PRO_DES         AS DESCRICAO,
    P.PRO_UND         AS UND,
    P.PRO_PRO         AS BARRAS,
    P.PRO_QTD         AS QTD,
    P.PRO_QEA         AS QTD_IDEAL,
    P.PRO_PSO         AS PESO,
    P.PRO_GRU         AS ID_GRUPO,
    G.GRU_DES         AS GRUPO,  -- Descrição do grupo (opcional)
    P.PRO_SGR         AS FAMILIA,
    P.PRO_VLC         AS PRECO_CUSTO,
    P.PRO_CPM         AS CUSTO_MEDIO,
    (P.PRO_VLC - P.PRO_CPM) AS MARGEM_LUCRO,
    P.PRO_LIQ         AS PRECO_VENDA,
    P.PRO_REF         AS COD_FABRICANTE,
    P.PRO_OBS         AS OBSERVACOES,
    CAST (P.PRO_CAD AS DATE)         AS CADASTRO,
    P.PRO_NCM         AS COD_NCM,
    P.PRO_CES         AS PERSONAL6,
    P.PRO_DHE         AS ULTIMA_COMPRA,
    CASE
        WHEN P.PRO_SIT = 'A' THEN 'Ativo'
        WHEN P.PRO_SIT = 'I' THEN 'Inativo'
        ELSE 'Desconhecido'
    END               AS SITUACAO
FROM
    PRODUTO P
LEFT JOIN
    GRUPO G ON G.GRU_COD = P.PRO_GRU;
