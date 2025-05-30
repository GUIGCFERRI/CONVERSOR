select
    p.id_produto as codigo,
    pcb.codigo_barra as barras,
    p.descricao as descricao,
    u.descricao as und,
    p.qtd_estoque as qtd,
    p.qtd_estoque_minimo as qtd_ideal,
    p.peso as peso,
    pg.descricao as grupo,
    psg.descricao as familia,
    f.razao_social as fornecedor,
    p.preco_custo as preco_custo,
    p.preco_venda as preco_venda,
    p.sit_trib_icms_simples as st,
    p.obs as observacoes,
    p.produto_codigo as cod_fabricante,
    p.cod_ncm as cod_ncm,
    p.cest as personal6,
    p.codigo_beneficio_fiscal as cbenef,
    case when p.inativo = 'True' then 'Inativo' else 'Ativo' end as SITUACAO
from produto as p
left join prod_unidade u on p.id_prod_unidade = u.id_prod_unidade
left join prod_subgrupo psg on p.id_prod_subgrupo = psg.id_prod_subgrupo
left join prod_grupo pg on psg.id_prod_grupo = pg.id_prod_grupo
left join fornecedor f on p.id_fornecedor = f.id_fornecedor
left join prod_cod_barras pcb on p.id_produto = pcb.id_produto
