SELECT
    p.id_produto AS CODIGO,
    g.descricao AS GRUPO,
    p.descricao AS DESCRICAO,
    p.unidade AS UND,
    p.custo AS PRECO_CUSTO,
    p.margem AS MARGEM_LUCRO,
    p.venda AS PRECO_VENDA,
    p.codfor AS COD_FABRICANTE,
    p.estoque AS QTD,
    p.medio AS CUSTO_MEDIO,
    p.codbar AS BARRAS,
    p.referencia AS CARACTERISTICAS,
    p.ncm AS COD_NCM,
    p.csosn AS ST,
    p.cest AS PERSONAL6
FROM
    produto p
LEFT JOIN
    grupo g ON p.id_grupo = g.id_grupo;