select
    produtos.id_produto as codigo,
    case when produtos.ativo = 'S' then 'Ativo' else 'Inativo' end as situacao,
    produtos.codinterno as cod_fabricante,
    max (codindustria.codigo) as barras,
    produtos.nome as descricao,
    grupo.nome as grupo,
    subgrupo.nome as familia,
    fornecedores.empresa as fornecedor,
    unidademedida.sigla as und,
    produtos.precocompra as preco_custo,
    produtos.margemlucro as margem_lucro,
    produtos.precovenda as preco_venda,
    produtos.origemmercadoria as ost,
    produtos.codsittribut as st,
    produtos.cest as personal6,
    produtos.classificacaofiscal as cod_ncm,
    produtos.estoque as qtd,
    produtos.estoqueminimo as qtd_ideal,
    cast (produtos.ultimacompra as date) as ultima_compra,
    cast (produtos.ultimavenda as date) as ultima_venda,
    cast (produtos.ultimaalteracao as date) as alteracao_preco,
    produtos.pesoliquido as peso,
    cast (produtos.datainclusao as date) as data_cadastro
from produtos
left join grupo on grupo.id_grupo = produtos.fk_grupo
left join subgrupo on subgrupo.id_subgrupo = produtos.fk_subgrupo
left join unidademedida on unidademedida.id_unidademedida = produtos.fk_unidademedida
left join fornecedores on fornecedores.id_fornecedor = produtos.fk_fornecedor 
left join codindustria on codindustria.fk_produto = produtos.id_produto
group by 1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23