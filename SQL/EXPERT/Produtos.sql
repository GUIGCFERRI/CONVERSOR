select
  cad_produtos.id as codigo,
  cad_produtos.nome_produto as descricao,
  max(cad_produtos_barra.cod_barra) AS barras,
  cad_produtos.unidade as und, 
  cad_produtos_tipo.nome_tipo as grupo,
  cad_produtos.vr_compra as preco_custo,
  cad_produtos.vr_venda as preco_venda,
  cad_produtos.vr_venda_2 as preco_atacado,
  cad_produtos.min_estoque as qtd_ideal,
  cad_produtos.estoque as qtd,
  cad_produtos.id_class_fiscal as st,
  cad_produtos.ncm_prod as cod_ncm,
  cad_produtos.referencia as cod_fabricante,
  cad_produtos.data_cadastro as data_cadastro,
  cast(cad_produtos.data_alteracao as date) as alteracao_preco
from cad_produtos
left join cad_produtos_tipo on cad_produtos_tipo.id = cad_produtos.id_tipo
left join cad_produtos_barra on cad_produtos_barra.id_produto = cad_produtos.id
group by 1,2,4,5,6,7,8,9,10,11,12,13,14,15