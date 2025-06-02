select
  produto.ID as codigo,
  produto.GTIN as barras,
  produto.NOME as descricao,
  produto.UNIDADE as und,
  produto.ESTOQUE_MINIMO as qtd_ideal,
  produto.ESTOQUE_ATUAL as qtd,
  produto.CUSTO as preco_custo,
  produto.MARGEM_LUCRO as margem_lucro,
  produto.PRECO_VENDA as preco_venda,
  produto.ORIGEM as ost,
  imposto_regra.SIT_TRIBUTARIA_NC as st,
  produto.NCM as cod_ncm,
  produto.CEST as personal6,
  cast(produto.DATA_ULTIMA_VENDA as date) as ultima_venda,
  cast(produto.DATA_ULTIMA_COMPRA as date) as ultima_compra,
  cast(produto.DATA_ALTERACAO as date) as alteracao_preco,
  cast(produto.DATA_CADASTRO as date) as data_cadastro
from produto
left join imposto on imposto.id = produto.ID_IMPOSTO
left join imposto_regra on imposto_regra.id = imposto.id