SELECT 
  ESTOQUE.id as codigo,
  ESTOQUE.descricao as descricao,
  ESTOQUE.cod_barras as barras,
  ESTOQUE.un_entrada as und_compra,
  ESTOQUE.un_saida as und,
  grupo.descricao as grupo,
  ESTOQUE.estoque as qtd,
  ESTOQUE.estoque_ideal as qtd_ideal,
  ESTOQUE.valor_custo as preco_custo,
  ESTOQUE.aliquota_lucro as margem_lucro,
  ESTOQUE.valor_venda as preco_venda,
  ESTOQUE.valor_atacado as preco_atacado,
  ESTOQUE.observacoes as observacoes,
  ESTOQUE.data_criacao as data_cadastro,
  ESTOQUE.data_alteracao as alteracao_preco,
  ESTOQUE.ncm as cod_ncm,
  ESTOQUE.ultima_compra as ultima_compra,
  ESTOQUE.cest as personal6,
  csosn.csosn as st, 
  fornecedores.nome_razao as fornecedor
FROM ESTOQUE
LEFT JOIN CSOSN ON CSOSN.ID = ESTOQUE.IDCSOSN
LEFT JOIN GRUPO ON GRUPO.ID = ESTOQUE.IDGRUPO
LEFT JOIN FORNECEDORES ON FORNECEDORES.ID = ESTOQUE.IDFORNECEDOR