select cli_cad.cli_cod as codigo,
substring( cli_cad.cli_nom from 1 for 60) as fantasia,
mun_cad.mun_nom as cidade,
EBR_CAD.ebr_nuf as uf,
substring(cli_cad.cli_ncp from 1 for 60) as nome,
replace(cli_cad.cli_tel,'-','') as telefone,
replace(cli_cad.cli_cel, '-','') as celular,
substring(cli_cad.cli_end from 1 for 60) as endereco,
replace(cli_cad.cli_cep, '-','') as cep,
cli_cad.cli_bai as bairro,
case when cli_cad.cli_cpf is null then
cli_cad.cli_cnp else
cli_cad.cli_cpf end "CNPJ_CNPF",
case when cli_cad.cli_cnp <> '' then
cli_cad.cli_ies else
cli_cad.cli_ide end "IE_RG",
current_date as cadastro,
substring(cli_cad.cli_ema from 1 for 60) as email,
replace(cli_cad.cli_fax,'-','') as  fax,
cli_cad.cli_num as numero,
substring(cli_cad.cli_cpl from 1 for 40) as complemento
from cli_cad
left join mun_cad on cli_cad.cli_mun = mun_cad.mun_mun
left join ebr_cad on mun_cad.mun_cuf = ebr_cad.ebr_cod