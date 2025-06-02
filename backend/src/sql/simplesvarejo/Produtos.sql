select
    produto.codigo as codigo,
    produto.codigo_barra as barras,
    produto.descricao as descricao,
    embalagem.abreviatura as und,
    grupo_produto.descricao as grupo,
    produto.codigo_ncm as cod_ncm,
    ncm.codigo_cest as personal6,
    produto_categoria.descricao as caracteristicas,
    produto.preco as preco_venda,
    produto.referencia as cod_fabricante,
    produto.peso_liquido as peso,
    produto.estoque as qtd,
    cast (produto.data_alteracao_preco as date) as alteracao_preco,
    produto.ultimo_codigo_fornecedor,
    cast (produto.data_cadastro as date) as data_cadastro,
    substring(icms.descricao, 1,1) as st
from produto
left join grupo_produto on grupo_produto.codigo = codigo_grupo_produto
left join embalagem on embalagem.codigo = produto.codigo_embalagem
left join produto_categoria on produto_categoria.codigo = produto.codigo_categoria
left join icms on icms.codigo = produto.codigo_icms 
left join ncm on ncm.codigo = produto.codigo_ncm
