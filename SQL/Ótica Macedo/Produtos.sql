select
    p.codigo as codigo,
    p.codean as barras,
    p.nome as descricao,
    p.unidade as und,
    p.qtdefiscal as qtd,
    p.qtdemin as qtd_ideal,
    p.peso as peso,
    ma.nome as caracteristicas,
    f.nome as fornecedor,
    g.nome as grupo,
    p.custonota as preco_custo,
    p.margemlucro as margem_lucro,
    p.precovenda as preco_venda,
    -- p.observacao,
    p.referencia as observacoes,
    p.codfabricante as cod_fabricante,
    p.codncm as cod_ncm,
    p.cestcodigo as personal6,
    cast (p.ultima_atualizacao as date) as alteracao_preco,
    case when p.desativado = 'false' then 'Ativo' else 'Inativo' end as situacao
from produtos as p
left join fornecedores f on p.codfornecedor = f.codigo
left join grupos g on p.codgrupo = g.codigo
left join marcas ma on p.codmarca = ma.codigo
