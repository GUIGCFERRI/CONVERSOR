select produto.prod_id_produto as codigo,
PRODUTO.prod_tx_descricao as descricao,
PRODUTO.prod_tx_reffabrica as cod_fabricante,
PRODUTO.prod_tx_codigoncm as cod_ncm,
SUBGRUPO.subg_tx_descricao as grupo,
UNIDADEMEDIDA.unid_tx_abreviatura as und,
cst.cst_tx_codigo as st,
PRODUTO.prod_vl_precocusto as preco_custo,
PRODUTO.prod_vl_customedio as custo_medio,
PRODUTO.prod_vl_preco1 as preco_venda,
produto.prod_tx_cest as personal6,
saldos.sald_vl_disponivelLoja as qtd
from produto
left join SUBGRUPO on produto.subg_id_subgrupo=SUBGRUPO.subg_id_subgrupo
left join UNIDADEMEDIDA on produto.unid_id_unidadevarejo=UNIDADEMEDIDA.unid_id_unidade
left join cst on produto.cst_id_cst=cst.cst_id_cst
left join saldos on produto.prod_id_produto=saldos.prod_id_produto
