select
  produto.id as codigo,
  produto.nome as descricao,
  produto.valor as preco_venda,
  produto.codigo_barras as barras,
  produto.estoque as qtd,
  substring(produto.aliquota,1,3) as ELO,
  produto.unidade as und,
  produto.situacao_tributaria as st,
  produto.cest as personal6,
  produto.custo as preco_custo,
  produto.ncm as cod_ncm,
  produto.unidade_entrada as und_compra,
  produto.origem as OST,
  produto.aliquota_IPI as ALIQ_IPI_VENDA,
  produto.aliquota_PIS as PIS_ALIQ_NOR,
  produto.aliquota_COFINS as COFINS_ALIQ_NOR,
  produto.cst_pis as PIS_CODIGO,
  produto.cst_cofins as COFINS_CODIGO,
  produto.estoque_minimo as QTD_IDEAL,
  categoria.nome as grupo
from produto
left join categoria on produto.id_categoria = categoria.id
