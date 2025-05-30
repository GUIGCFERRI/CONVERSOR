select
    item.codigo as codigo,
    item.codigo_barra as barras,
    item.descricao as descricao,
    item.referencia as cod_fabricante,
    grupo_item.descricao as grupo,
    cst_csosn.codigo_cst as st,
    unidade.abreviatura as und,
    item_preco.preco as preco_venda,
    item.ultima_compra as ultima_compra,
    item.ultima_venda as ultima_venda,
    item_preco.alteracao_preco as alteracao_preco,
    item.estoque as qtd,
    item.estoque_minimo as qtd_ideal,
    cast (item.data_cadastro as date) as data_cadastro,
    item.cest as personal6
from item
left join cst_csosn on cst_csosn.codigo = item.codigo_tributo
left join unidade on unidade.codigo = item.unidade_padrao_saida
left join grupo_item on grupo_item.codigo = item.codigo_grupo
left join item_preco on item_preco.codigo_item = item.codigo
