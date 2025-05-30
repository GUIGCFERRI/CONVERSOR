select ep001.es_produtos.codigo_pro as codigo,
ep001.es_produtos.descri_pro as descricao,
ep001.es_produtos.unidad_pro as und,
ep001.es_produtos.codncm_pro as cod_ncm,
ep001.es_produtos.codbar_pro as barras,
ep001.es_tbsaldos.quanti_sld as qtd,
ep001.es_tbsaldos.vcusto_sld as preco_custo,
ep001.es_tbsaldos.pvenda_sld as preco_venda
from ep001.es_produtos
left join ep001.es_tbsaldos on ep001.es_produtos.codigo_pro=ep001.es_tbsaldos.codigo_sld

