select
    p.codigo as codigo,
    p.descricao as descricao,
    p.codigo_barra as barras,
    p.sigla_unidade as und,
    g.nome as grupo,
    f.nome as fornecedor,
    p.peso_liquido as peso,
    p.quantidade as qtd,
    p.qtd_minima as qtd_ideal,
    p.preco_custo as preco_custo,
    p.margem_lucro as margem_lucro,
    p.valor as preco_venda,
    substring (a.situacao_tributaria from 1 for 1) as ost,
    substring (a.situacao_tributaria from 2 for 3) as st,
    (select referencia_produto.referencia from referencia_produto where p.codigo = referencia_produto.codigo_produto order by referencia_produto.modificado desc limit 1) as cod_fabricante,
    p.observacao as observacoes,
    p.ncm as cod_ncm,
    p.cest as personal6,
    cast (p.cadastrado as date) as data_cadastro,
    case when p.inativo = '1' then 'Inativo' else 'Ativo' end as situacao
from produto as p
left join grupo g on p.codigo_grupo =  g.codigo
left join aliquota a on p.codigo_aliquota = a.codigo
left join fabricante f on p.codigo_fabricante = f.codigo 
--where p.codigo = '90303'
