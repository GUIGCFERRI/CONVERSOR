SELECT
    PRODUTOS.PRO_CODIGO AS CODIGO,
    PRODUTOS.PRO_BARRAS AS BARRAS,
    PRODUTOS.PRO_DESCRI AS DESCRICAO,
    PRODUTOS.PRO_PESO_LIQUIDO AS PESO,
    SECAO.sec_descri AS GRUPO,
    MARCA.mar_descri AS CARACTERISTICAS,
    FORNECEDOR.for_ras_social AS FORNECEDOR,
    PRODUTOS.PRO_UNIDADE AS UND,
    PRODUTOS.PRO_ESTOQUE_MIN AS QTD_IDEAL,
    PRODUTOS_ESTOQUE.PRO_CONTABIL AS QTD,
    PRODUTOS.PRO_CUSTO_MEDIO AS CUSTO_MEDIO,
    PRODUTOS.PRO_CUSTO AS PRECO_CUSTO,
    PRODUTOS.PRO_LUCRO AS MARGEM_LUCRO,
    PRODUTOS.PRO_VALOR AS PRECO_VENDA,
    NCM.ncm_codigo AS COD_NCM,
    PRODUTOS_TRIBUTACAO.PRO_ICMS_TIPO AS ST,
    PRODUTOS.PRO_DATA_CADASTRO AS DATA_CADASTRO
FROM PRODUTOS
LEFT JOIN PRODUTOS_ESTOQUE ON PRODUTOS_ESTOQUE.pro_codigo = PRODUTOS.PRO_CODIGO
LEFT JOIN SECAO ON SECAO.sec_codigo = PRODUTOS.PRO_SECAO
LEFT JOIN MARCA ON MARCA.mar_codigo = PRODUTOS.PRO_MARCA
LEFT JOIN PRODUTOS_TRIBUTACAO ON PRODUTOS_TRIBUTACAO.pro_trib_codigo = PRODUTOS.PRO_CODIGO_TRIBUTACAO
LEFT JOIN FORNECEDOR ON FORNECEDOR.for_codigo = PRODUTOS.PRO_FORNECEDOR
LEFT JOIN NCM ON NCM.ncm_indice = PRODUTOS.PRO_NCM
