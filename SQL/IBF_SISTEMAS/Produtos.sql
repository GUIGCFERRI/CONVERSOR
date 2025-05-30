SELECT 
    RIGHT(REPLACE(REPLACE(e.cod_prod, '-', ''), '.', ''), 6) AS CODIGO,
    e.codbar AS BARRAS,
    e.descr_prod AS DESCRICAO,
    e.unid1 AS UND,
    e.ref_for AS FORNECEDOR,
    e.quant AS QTD,
    e.qt_minim AS QTD_IDEAL,
    e.peso_liq AS PESO,
    e.cod_gr AS ID_GRUPO,
    g.nome_gr AS GRUPO,
    s.nome_subgr AS FAMILIA,
    e.custo_compra_simulado AS PRECO_CUSTO,
    e.cust_med AS CUSTO_MEDIO,
    (e.pr_vend - e.custo_compra_simulado) / e.pr_vend * 100 AS MARGEM_LUCRO,
    e.pr_vend AS PRECO_VENDA,
    e.cod_trib_csosn AS ST,
    e.descricao_reduzida AS OBSERVACOES,
    e.data_ope AS DATA_CADASTRO,
    c.ncm AS COD_NCM,
    e.cest AS PERSONAL6,
    e.dat_comp AS ULTIMA_COMPRA,
    e.dt_ult_ven AS ULTIMA_VENDA,
    e.ult_reaj AS ALTERACAO_PRECO,
    CASE 
        WHEN e.inativo = 'N' THEN 'Ativo'
        WHEN e.inativo = 'S' THEN 'Inativo'
        ELSE 'Desconhecido'
    END AS SITUACAO
FROM 
    estoque e
LEFT JOIN 
    (SELECT DISTINCT cest, ncm FROM cest) c ON e.cest = c.cest
LEFT JOIN grupo g ON e.cod_gr = g.cod_gr
LEFT JOIN subgrupo s ON e.cod_subgr = s.cod_subgr AND e.cod_gr = s.cod_gr;