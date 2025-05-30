select
  produto.ID as codigo,
  unidade_produto.sigla as und,
  produto.GTIN as barras,
  produto.NCM as cod_ncm,
  produto.NOME as descricao,
  produto_grupo.nome as grupo,
  produto_sub_grupo.nome as familia,
  produto.VALOR_COMPRA as preco_custo,
  tabela_preco_produto.PRECO AS preco_venda,
  max(produto_estoque.quantidade_estoque) as qtd,
  tribut_icms_uf.CSOSN_B as st,
  produto.CODIGO_CEST as personal6,
  case when PRODUTO.INATIVO = 'S' then 'Inativo' else 'Ativo' end as SITUACAO
from produto
left join unidade_produto on produto.id_unidade_produto = unidade_produto.id
left join produto_estoque on produto.id = produto_estoque.id_produto
left join produto_grupo on produto_grupo.ID = produto.ID
left join produto_sub_grupo on produto_sub_grupo.ID = produto.ID_sub_grupo
left join tabela_preco_produto on tabela_preco_produto.ID_PRODUTO = produto.id and tabela_preco_produto.ID_TABELA_PRECO = 1
left join tribut_icms_uf on tribut_icms_uf.ID_TRIBUT_CONFIGURA_OF_GT = produto.ID_GRUPO_TRIBUTARIO
group by 1,2,3,4,5,6,7,8,9,11,12,13
