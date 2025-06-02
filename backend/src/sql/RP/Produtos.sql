select
    materiais.mat_001 as codigo,
    materiais.mat_003 as descricao,
    materiais.mat_004 as barras,
    unidades.uni_003 as und,
    materiais.mat_008 as preco_venda,
    materiais.cfop_consumidor as cf,
    materiais.cst_consumidor as st,
    materiais.ncm as cod_ncm,
    materiais.cest as personal6
from materiais
left join unidades on unidades.uni_001 = materiais.uni_001