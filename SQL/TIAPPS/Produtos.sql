select
    m.codigo as codigo,
    m.codigogeral,
    m.codigoean as barras,
    m.descricao as descricao,
    u.unidade as und,
    (select saldoinventario.quantidade from saldoinventario where m.codigo = saldoinventario.mercadoria order by saldoinventario.data desc limit 1) AS QTD,
    m.saldominimo as qtd_ideal,
    m.pesoliquidounitario as peso,
    tpc.precocustounitariofinal as preco_custo,
    tpc.margemlucrounitarioatual as margem_lucro,
    tpc.precovendaunitario as preco_venda,
    m.csticms as st,
    m.observacoes as observacoes,
    (select referencia.referencia from referencia where m.codigo = referencia.mercadoria order by referencia.datahoraalteracao desc limit 1) as cod_fabricante,
    m.deolhonoimposto as cod_ncm,
    c.codigo as personal6,
    m.cbenef as cbenef,
    tpc.datahoraalteracao as alteracao_preco,
    case when m.inativo = 'false' then 'Ativo' else 'Inativo' end as situacao
from mercadorias as m
left join unidades u on m.unidadeindividual = u.codigo
left join tabelasprecomercadoria tpc on m.codigo = tpc.mercadoria
left join cest c on m.deolhonoimposto = c.ncm
order by m.codigo
