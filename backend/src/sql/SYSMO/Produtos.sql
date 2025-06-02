select 
    gcepro02.cod as codigo,
    gcepro02.dsc as descricao,
    max (gcebar01.bar) as barras,
    gcepro02.uni as und,
    gcepro05.qnt as qtd,
    substring (max(gcefor01.cst), 1, 1) as ost,
    substring (max(gcefor01.cst), 2, 3) as st,
    gcepro05.prc as preco_custo,
    gcepro05.cmu as custo_medio,
    gcepro04.pv1 as preco_venda,
    gcepro02.clf as cod_ncm,
    gcepro02.cd_especificadorst as personal6,
    gcepro02.dtc as data_cadastro,
    gcepro02.dtm as ultima_venda
from gcepro02
left join gcepro04 on gcepro04.cod = gcepro02.cod
left join gcepro05 on gcepro05.cod = gcepro02.cod
left join gcebar01 on gcebar01.pro = gcepro02.cod
left join gcefor01 on gcefor01.pro = gcepro02.cod
group by 1,2,4,5,8,9,10,11,12,13,14
