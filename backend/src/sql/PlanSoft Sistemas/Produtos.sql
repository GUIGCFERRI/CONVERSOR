select
    produto.codigo as codigo,
    produto.codigo_anterior as barras,
    produto.descricao as descricao,
    unidade.sigla as und,
    unidade.sigla as und_compra,
    fabricante.nome as fornecedor,
    produto.estoque_minimo as qtd_ideal,
    estoque.quantidade as qtd,
    grupo.descricao as grupo,
    subgrupo.descricao as familia,
    produto.custo as preco_custo, 
    produto.custo_medio as custo_medio,
    percentual_venda as margem_lucro,
    produto.venda as preco_venda,
    produto.preco_atacado as preco_atacado,
    SUBSTRING(produto.cst FROM 1 FOR 1) as ost,
    SUBSTRING(produto.cst FROM 2 FOR 4) as st,
    cast (produto.alteracao as date) as alteracao_preco,
    cast (produto.data_cadastro as date) as data_cadastro,
    produto.ncm as cod_ncm,
    produto.ref_fornecedor as cod_fabricante,
    produto.codigo_cest as personal6,
    produto.observacao as observacoes
from produto
left join grupo on grupo.codigo = produto.codigo_grupo
left join subgrupo on subgrupo.codigo = produto.codigo_subgrupo
left join unidade on unidade.codigo = produto.codigo_unidcompra
left join fabricante on fabricante.codigo = produto.codigo_fabricante
left join estoque on estoque.codigo_produto = produto.codigo
