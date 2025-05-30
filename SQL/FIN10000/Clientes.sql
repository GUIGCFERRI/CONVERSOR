select cadcli.CL_CODIGO as codigo,
cadcli.CL_FANT as fantasia,
cadcli.CL_RAZ_SOC as nome,
cadcli.cl_ender as endereco,
cadcli.cl_bair as bairro,
cadcli.CL_CID as cidade,
cadcli.CL_UF as uf,
cadcli.cl_cep as cep,
case when cadcli.cl_cpf='' then cadcli.CL_CGC else cadcli.cl_cpf end as cnpj_cnpf,
cadcli.cl_ins as ie_rg,
CONCAT(cadcli.CL_DDD,cadcli.CL_FONE_1) as telefone,
CONCAT(cadcli.CL_DDD,cadcli.CL_FONE_2) as celular,
cadcli.CL_DTCAD as cadastro,
cadcli.CL_EMAIL as email,
cadcli.CL_NUMERO as numero
from cadcli


