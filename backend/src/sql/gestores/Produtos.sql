SELECT 
    EST_SUBGRUPO.DESC_SUBGRUPO AS FAMILIA,
    EST_GRUPO.DESC_GRUPO AS GRUPO,
    pr.cod_produto AS CODIGO,
    pr.desc_produto AS DESCRICAO,
    pr.cod_barra AS BARRAS,
    pr.referencia AS COD_FABRICANTE,
    pc.preco_custo AS PRECO_CUSTO,
    pc.preco_venda AS PRECO_VENDA,
    pc.preco_custo_medio AS CUSTO_MEDIO,
    pr.ncm AS COD_NCM,
    CAD_UNIDADE.SIGLA_UN AS UND,
    pr.cest AS PERSONAL6,
    sum(ets.saldo_atual) AS QTD
   FROM est_produto_preco pc
     JOIN est_produto pr ON pr.id_produto = pc.id_produto
     LEFT JOIN est_estoque ets ON ets.id_produto = pr.id_produto 
     LEFT JOIN EST_GRUPO ON PR.ID_GRUPO = EST_GRUPO.ID_GRUPO
     LEFT JOIN EST_SUBGRUPO ON PR.ID_SUBGRUPO = EST_SUBGRUPO.ID_SUBGRUPO
	 LEFT JOIN CAD_UNIDADE ON PR.ID_UNIDADE = CAD_UNIDADE.ID_UNIDADE
	 where pr.cod_filial = '1'
   group by EST_SUBGRUPO.DESC_SUBGRUPO,
    EST_GRUPO.DESC_GRUPO ,
    pr.cod_produto,
    pr.desc_produto,
    pr.cod_barra,
    pr.referencia,
    pc.preco_custo,
    pc.preco_venda,
    pc.preco_custo_medio,
    pr.ncm,
    CAD_UNIDADE.SIGLA_UN,
    pr.cest
