select
    p.id as codigo,
    p.descricao as descricao,
    p.referencia as cod_fabricante,
    p.gtin as barras,
    p.peso as peso,
    gp.quantidade as qtd,
    pr.valorcusto as preco_custo,
    pr.valorcustomedio as custo_medio,
    pr.valorvenda as preco_venda,
    substring (p.cstcsosn from 1 for 1) as ost,
    substring (p.cstcsosn from 2 for 4) as st,
    u.sigla as und,
    p.ncmfiscalid as cod_ncm,
    p.cestfiscalid as personal6,
    g.nome as grupo,
    m.nome as familia,
    case when p.ativo = 'true' then 'Ativo' else 'Inativo' end as SITUACAO
from produto as p
left join preco pr on p.id = pr.produtoid
left join unidade u on p.unidadeid = u.id
left join grupo g on p.grupoid = g.id
left join marca m on p.marcaid = m.id
left join gradeproduto gp on p.id = gp.produtoid
order by p.id asc
