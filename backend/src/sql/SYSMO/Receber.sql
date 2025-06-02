select
    crcmvt01.tdc as tipo_doc,
    crcmvt01.num as num_conta,
    substring (crcmvt01.num || '' || cast (crcmvt01.nsq as int), 1,13) as documento,
   crcmvt01.num ||' / '|| trstra01.nom as observacoes,
    crcmvt01.ccf as cod_cliente,
    trstra01.nom as nom_cliente,
    trstra01.cgc as cnpj,
    cast (crcmvt01.nsq as int) as historico,
    crcmvt01.dte as emissao,
    crcmvt01.vtd as valor_dup,
    crcmvt01.dtv as vencimento,
    crcmvt01.dbx as recebimento,
    crcmvt01.vbx as valor_rec
from crcmvt01 
left join trstra01 on trstra01.cod = crcmvt01.ccf
where crcmvt01.ccf <> '0'
--order by trstra01.nom asc
