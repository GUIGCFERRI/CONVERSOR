SELECT
       est.codigo AS CODIGO
      ,est.descricao_producao AS DESCRICAO
      ,codigo_barra.codigo AS BARRAS
      ,est.cod_externo AS COD_FABRICANTE
      ,est.unidade AS UND
      ,estoque.qtd AS QTD
      ,grupo_material.DESCRICAO AS GRUPO
      ,fiscal.material.cod_ncm AS COD_NCM
      ,fiscal.material.cst_icms AS ST
      ,fiscal.material.cst_pis AS PIS_CODIGO
      ,fiscal.material.cst_cofins AS COFINS_CODIGO
      ,fiscal.material.cest AS PERSONAL6
      ,fiscal.material.vl_unit AS PRECO_VENDA
      ,CAST (est.dt_alt AS DATE) AS ALTERACAO_PRECO
  FROM colibri8.dbo.material est
  LEFT JOIN colibri8.dbo.grupo_material on grupo_material.id = est.grupo_id
  LEFT JOIN colibri8.dbo.codigo_barra ON codigo_barra.material_id = est.id
  LEFT JOIN colibri8.dbo.item_preco ON item_preco.material_id = est.id
  LEFT JOIN colibri8.fiscal.material on est.id = colibri8.fiscal.material.material_id
  LEFT JOIN colibri8.fiscal.estoque ON fiscal.estoque.material_id = MATERIAL.material_id
