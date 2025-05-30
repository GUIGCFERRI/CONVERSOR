select principais.produtos.pro_id as codigo,
principais.produtos.pro_codigo as barras,
principais.produtos.pro_descricao as descricao,
principais.produtos.pro_referencia as caracteristicas,
principais.produtos.pro_preco_custo as preco_custo,
principais.produtos.pro_preco_venda as preco_venda,
principais.produtos.fk_cest_codigo as personal6,
principais.produtos.fk_ncm_codigo as cod_ncm,
principais.produtos.fk_csosn_codigo as st,
principais.produtos.pro_custo_medio as custo_medio,
principais.unidade_produtos.unipro_sigla as und
from principais.produtos
left join principais.unidade_produtos on principais.produtos.fk_unipro_id=principais.unidade_produtos.unipro_id
