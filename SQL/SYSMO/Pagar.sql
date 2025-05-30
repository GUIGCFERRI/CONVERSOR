select
    cpgmvt01.tdc || '' || cpgmvt01.num as tipo_doc,
    cast(cpgmvt01.num as int) as num_conta,
    cpgmvt01.nsq as documento,
    cpgmvt01.num ||' / '|| trstra01.nom as observacoes,
    cpgmvt01.ccf as cod_fornecedor,
    trstra01.nom as nom_fornecedor,
    trstra01.cgc as cnpj,
    CAST (cpgmvt01.nsq as int) as historico,
    cpgmvt01.vtd as valor_dup,
    cpgmvt01.dte as emissao,
    cpgmvt01.dtv as vencimento,
    cpgmvt01.dbx as pagamento,
    cpgmvt01.vl_jurosbaixado as valor_jur,
    cpgmvt01.vbx as valor_pag
from cpgmvt01
left join trstra01 on trstra01.cod = cpgmvt01.ccf
where cpgmvt01.ccf <> '000000'
--GROUP BY 1,2,4,5,6,7,8,9,10,11,12,13,14
