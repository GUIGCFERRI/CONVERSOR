SELECT 
    prod_serv.id AS CODIGO,
    grupo_produto_servico.nome AS GRUPO,
    ncm.codigo AS COD_NCM,
    CEST.codigo AS PERSONAL6,
    csosn.codigo AS ST,
    unidade.simbolo AS UND_COMPRA,
    unidade.simbolo AS UND,
    prod_serv_emp.quantidade AS QTD,
    prod_serv_emp.quantidade_min AS QTD_IDEAL,
    prod_serv_emp.preco_custo AS PRECO_CUSTO,
    prod_serv_emp.custo_medio AS CUSTO_MEDIO,
    prod_serv_emp.lucro_vista AS MARGEM_LUCRO,
    prod_serv_emp.preco_vista AS PRECO_VENDA,
    prod_serv_emp.observacoes AS OBSERVACOES,
    prod_serv.codigo_alternativo AS COD_FABRICANTE,
    prod_serv.codigo_barras AS BARRAS,
    prod_serv.descricao AS DESCRICAO,
    CAST (prod_serv.cadastro AS DATE) AS DATA_CADASTRO,
    prod_serv.peso_liquido AS PESO
FROM prod_serv
LEFT JOIN prod_serv_emp ON prod_serv_emp.ID_PROD_SERV = PROD_SERV.ID and prod_serv_emp.id_empresa = 2  --- AJUSTAR AQUI O ID DA EMPRESA
LEFT JOIN unidade ON unidade.ID = prod_serv_emp.id_unidade_ent
LEFT JOIN grupo_produto_servico ON grupo_produto_servico.ID = prod_serv.id_grupo_prod_serv
LEFT JOIN ncm ON ncm.ID = prod_serv.id_ncm
LEFT JOIN cest ON cest.ID = prod_serv.id_cest
LEFT JOIN csosn ON csosn.ID = prod_serv_emp.id_csosn
