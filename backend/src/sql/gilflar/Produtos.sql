select
  tbproduto.codigo as cod_fabricante,
  tbproduto.nome as descricao,
  tbproduto.sigla_um as und,
  tbgrupo_prod.nome as grupo,
  tbproduto.dt_ultima_entrada as ultima_compra,
  tbproduto.peso as peso,
  tbproduto.qtd_minima as qtd_ideal,
  max(tbprod_ajuste_item.qtd_nova) as qtd,
  tbproduto.cod_barra as barras,
  max(tbtabela_preco_prod.vr_custo) as preco_custo,
  max(tbtabela_preco_prod.markup) as margem_lucro,
  max(tbtabela_preco_prod.vr_minimo) as preco_venda,
  ##max(tbtabela_preco_prod.vr_saida),
  tbproduto.ncm as cod_ncm,
  tbproduto.cest as personal6,
  tbmarca.nome as caracteristicas,
  tbfornec.razao_social as fornecedor
from tbproduto
left join tbfornec on tbfornec.codigo = tbproduto.cod_fornec
left join tbgrupo_prod on tbgrupo_prod.codigo = tbproduto.cod_grupo
left join tbtabela_preco_prod on tbtabela_preco_prod.cod_prod = tbproduto.codigo
left join tbprod_ajuste_item on tbprod_ajuste_item.cod_prod = tbproduto.codigo
left join tbmarca on tbmarca.codigo = tbproduto.cod_marca
##where tbproduto.cod_filial = '1' and tbtabela_preco_prod.cod_filial = '1'
group by 1,2,3,4,5,6,7,9,13,14,15,16
