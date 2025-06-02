select estoque.id as codigo,
max (estoque_codbar.codbar) as barras,
estoque.descricao as descricao,
estoque.referencia as cad_fabricante,
grupo.descricao as grupo,
subgrupo.descricao as familia,
estoque.fkunidade as und,
estoque.observacao as observacao,
estoque.uncom as und_compra,
estoque.qtd_caixa as fat_conv,
estoque_filial_qtd.custo as preco_custo,
estoque_filial_qtd.customedio as custo_medio,
estoque_filial_qtd.venda as preco_venda,
estoque_filial_qtd.qtd as qtd,
ncm.ncm as cod_ncm,
estoque_filial_uf.cest as personal6,
estoque_filial_uf.csosn as st
from estoque
left join grupo on grupo.id = estoque.fkgrupo
left join subgrupo on subgrupo.id = estoque.fksubgrupo
left join estoque_codbar on estoque_codbar.fkestoque = estoque.id
left join estoque_filial_qtd on estoque_filial_qtd.fkestoque = estoque.id
left join estoque_filial_uf on estoque_filial_uf.fkestoque = estoque.id
left join ncm on ncm.id = estoque_filial_uf.fkncm

group by

estoque.id,
estoque.descricao,
estoque.referencia,
grupo.descricao,
subgrupo.descricao,
estoque.fkunidade,
estoque.observacao,
estoque.uncom,
estoque.qtd_caixa,
estoque_filial_qtd.custo,
estoque_filial_qtd.customedio,
estoque_filial_qtd.venda,
estoque_filial_qtd.qtd,
ncm.ncm,
estoque_filial_uf.cest,
estoque_filial_uf.csosn
order by 1
