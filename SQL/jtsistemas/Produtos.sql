select
  cod_prod as codigo,
  cod_externo as barras,
  desc_produto as descricao,
  data_cadastro as data_cadastro,
  preco as preco_venda,
  ncm as cod_ncm,
  obs as observacoes,
  data_ultimo_ajuste as alteracao_preco,
  cest as personal6,
  codigofabricante as cod_fabricante
from produto
