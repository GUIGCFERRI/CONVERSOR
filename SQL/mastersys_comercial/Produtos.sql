SELECT
  ITEM.CODIGO AS CODIGO,
  ITEM.DESCRICAO AS DESCRICAO,
  ITEM.CODIGO_BARRAS AS BARRAS,
  unidade_medida.simbolo as und_compra,
  unidade_medida.simbolo as und,
  ESTOQUE.QUANTIDADE AS QTD,
  ITEM.PESO_LIQUIDO AS PESO,
  ITEM_GRUPO.descricao as grupo,
  tabela_preco_item.CUSTO AS PRECO_CUSTO,
  ITEM.MARGEM_LUCRO AS MARGEM_LUCRO,
  tabela_preco_item.VALOR AS PRECO_VENDA,
  substring(perfil_fiscal.descricao,1,1) as st,
  ITEM.OBSERVACAO AS OBSERVACOES,
  ITEM.NCM AS COD_NCM,
  ITEM.DATA_CADASTRO AS DATA_CADASTRO,
  ITEM.CEST AS PERSONAL6
FROM ITEM
LEFT JOIN ESTOQUE ON ESTOQUE.CODIGO = ITEM.CODIGO
LEFT JOIN tabela_preco_item ON tabela_preco_item.ITEM = ITEM.CODIGO
LEFT JOIN perfil_fiscal ON perfil_fiscal.codigo = item.perfil_fiscal
left join item_grupo on item_grupo.codigo = ITEM.GRUPO
left join unidade_medida on unidade_medida.codigo = ITEM.UNIDADE_VENDA
