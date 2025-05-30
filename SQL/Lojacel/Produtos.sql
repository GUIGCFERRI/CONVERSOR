SELECT
  `cod_produto` as CODIGO,
  `pro_desc` as DESCRICAO,
  `pro_cod_barras` as BARRAS,
  `pro_quant` as QTD,
  `pro_minimo` as QTD_IDEAL,
  `pro_custo` as PRECO_CUSTO,
  `pro_unid` as UND,
  `pro_medio` as CUSTO_MEDIO,
  `pro_venda` as PRECO_VENDA,
  `pro_margem` as MARGEM_LUCRO,
  `pro_promocao` as PRECO_ATACADO,
  `peso` as PESO,
  `ncm` as COD_NCM,
  `csosn` as ST, 
  `cest` as PERSONAL6
  from produtos
