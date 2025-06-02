select
    produto.codigo as codigo,
    produto.descricao as descricao,
    produto.sigla_unidade as und,
    produto.peso_liquido as peso,
    produto.codigo_barra as barras,
    produto.qtd_minima as qtd_ideal,
    produto.quantidade as qtd,
    produto.valor as preco_venda,
    produto.codigo_fabricante as cod_fabricante,
    grupo.nome as grupo,
    produto.preco_custo as preco_custo,
    produto.margem_lucro as margem_lucro,
    produto.ncm as cod_ncm,
    produto.observacao as observacoes,
    produto.cest as personal6,
    produto.cadastrado as data_cadastro
from produto
left join grupo on grupo.codigo = produto.codigo_grupo