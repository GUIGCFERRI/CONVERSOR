SELECT
       substring (produto.pro_cd, 3,7) as codigo
      ,produto.pro_ds as descricao
      ,produto.pro_ref as cod_fabricante
      ,marca.mar_nm as caracteristicas
      ,grupoprod.grp_nm as grupo
      ,subgrupoprod.sgp_nm as familia
      ,produto.pro_unid as und
      ,produto.pro_gtin as barras
      ,produto.pro_peso as peso
      ,item_estoque.ite_est_atual as qtd
      ,item_estoque.ite_est_min as qtd_ideal
      ,item_estoque.ite_est_vl_vend as preco_venda
      ,item_estoque.ite_est_vl_atacado as preco_atacado
      ,item_estoque.ite_est_vl_cust as preco_custo
      ,item_estoque.ite_est_lucro_venda as margem_lucro
      ,item_estoque.ite_est_vl_cust_med as custo_medio
      ,produto.pro_icms_cobr_subst as st
      ,produto.pro_classfiscal as cod_ncm
      ,cest.ces_cd as personal6
      ,produto.pro_obs as observacoes
  FROM bd_apollo.dbo.produto
  LEFT JOIN bd_apollo.dbo.item_estoque ON item_estoque.ite_est_pro_cd = produto.pro_cd
  LEFT JOIN bd_apollo.dbo.marca ON marca.mar_cd = produto.pro_mar_cd
  LEFT JOIN bd_apollo.dbo.grupoprod ON grupoprod.grp_cd = produto.pro_grp_cd
  LEFT JOIN bd_apollo.dbo.subgrupoprod ON subgrupoprod.sgp_cd = produto.pro_sgp_cd
  LEFT JOIN bd_apollo.dbo.cest ON cest.ces_ncm = produto.pro_classfiscal
