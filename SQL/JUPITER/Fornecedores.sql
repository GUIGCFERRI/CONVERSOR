select FRN_CAD.frn_cod as codigo,
substring(FRN_CAD.frn_rso from 1 for 60) as nome,
substring(FRN_CAD.frn_fan from 1 for 40) as fantasia,
FRN_CAD.frn_rte as contato,
replace(FRN_CAD.frn_tel,'-','')as telefone,
replace(FRN_CAD.frn_fax, '-','')as fax,
FRN_CAD.frn_cnp as cnpj_cnpf,
FRN_CAD.frn_ies  as ie_rg,
substring(FRN_CAD.frn_end from 1 for 60)as endereco,
FRN_CAD.frn_bai as bairro,
replace(replace(FRN_CAD.frn_cep,'-',''),',','')as cep,
FRN_CAD.frn_lgc as complemento,
ebr_cad.ebr_nuf as UF,
mun_cad.mun_nom as cidade
from FRN_CAD
left join ebr_cad on FRN_CAD.frn_ebr = ebr_cad.ebr_cod
left join mun_cad on FRN_CAD.frn_mun = mun_cad.mun_mun