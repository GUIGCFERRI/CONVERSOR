SELECT
    p.id_produto AS CODIGO,
    p.codbar AS BARRAS,
    p.descricao AS DESCRICAO,
    p.unidade AS UND,
    f.nome AS FORNECEDOR,
    p.estoque AS QTD,
    p.qtd_minima AS QTD_IDEAL,
    p.peso_por_unidade AS PESO,
    p.id_grupo AS id_GRUPO,
    g.descricao AS GRUPO,
    p.id_subgrupo AS FAMILIA,
    p.custo AS PRECO_CUSTO,
    p.medio AS CUSTO_MEDIO,
    p.margem AS MARGEM_LUCRO,
    p.venda AS PRECO_VENDA,
    p.id_fabricante AS COD_FABRICANTE,
    p.referencia AS OBSERVACOES,
    COALESCE(p.dtcad, CURRENT_DATE) AS CADASTRO,
    p.ncm AS COD_NCM,

    -- Subselect para trazer apenas 1 CEST por NCM
    (
        SELECT pc.cest
        FROM produto_cest pc
        WHERE pc.ncm = p.ncm
        LIMIT 1
    ) AS PERSONAL6,

    p.ult_preco AS ULTIMA_COMPRA,

    (
        SELECT ic.csosn_b
        FROM tribut_grupo_tributario t
        LEFT JOIN tribut_configura_of_gt tc ON t.id_grupo_tributario = tc.id_tribut_grupo_tributario
        LEFT JOIN tribut_icms_uf ic ON tc.id_configura_of_gt = ic.id_tribut_configura_of_gt
        WHERE t.id_grupo_tributario = p.id_grupo_tributario
        ORDER BY tc.id_configura_of_gt, ic.id_icms_uf
        LIMIT 1
    ) AS ST

FROM produto p
LEFT JOIN produto_st ps ON p.id_produto = ps.id_produto
LEFT JOIN grupo g ON p.id_grupo = g.id_grupo
LEFT JOIN fornecedor_table f ON p.id_fornec = f.id_fornec;