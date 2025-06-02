select
    p.idproduto as codigo,
    p.descricao as descricao,
    p.ean as barras,
    um.sigla as und,
    p.saldoestoque as qtd,
    p.estoqueminimo as qtd_ideal,
    ct.descricao as grupo,
    p.codigo as caracteristicas,
    p.valorcusto as preco_custo,
    p.valorvenda as preco_venda,
    p.valorvendaatacado as preco_atacado,
    if.idcsticms as st,
    p.referencia as cod_fabricante,
    ncm.codigo as cod_ncm,
    p.cest as personal6,
    case when p.ativo = '1' then 'Ativo' else 'Inativo' end as situacao
from produto as p
left join unidadedemedida um on p.idunidadedemedida = um.idunidadedemedida
left join ncm on ncm.idncm = p.idncm
left join categoria ct on p.idcategoria = ct.idcategoria
left join integracaofiscal if on p.idintegracaofiscalnfe = if.idintegracaofiscal 