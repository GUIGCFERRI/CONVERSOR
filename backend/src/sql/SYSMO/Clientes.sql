select 
    min (trstra01.cod) as codigo,
    trstra01.nom as nome,
    trstra01.fan as fantasia,
    trstra01.cgc as cnpj_cnpf,
    trstra01.ins as ie_rg,
    trstra01.log as endereco,
    trstra01.num as numero,
    trstra01.bai as bairro,
    trstra01.cmp as complemento,
    trsmun01.dsc as cidade,
    trsmun01.est as uf,
    trsmun01.cep as cep,
    trstra01.tel as telefone,
    trstra01.fax as fax,
    trstra01.cel as celular,
    trstra01.eml as email,
    trsccv01.lcr as limite_credito,
    trstra01.dtn as nascimento,
    trstra01.obs as observacoes
from trstra01
left join trsmun01 on trsmun01.cod = trstra01.mun
left join trsccv01 on trsccv01.cod = trstra01.cod
where trstra01.tip <> 'F'
group by 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19
ORDER BY trstra01.nom ASC
