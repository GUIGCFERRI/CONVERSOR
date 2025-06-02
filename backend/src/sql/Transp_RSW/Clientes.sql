select CL_CLIE1.nr_reg as codigo,
CL_CLIE1.nome_clie as nome,
CL_CLIE1.nome_fant as fantasia,
CL_CLIE1.ende_clie as endereco,
CL_CLIE1.ende_nume as numero,
CL_CLIE1.ende_comp as complemento,
CL_CLIE1.cep_clie as cep,
ba_bair1.nome_bair as bairro,
CL_CLIE1.cida_clie as cidade,
es_icms1.sigl_esta as uf,
CL_FONE1.pref_fon1 || cl_fone1.nume_fon1  as telefone,
CL_FONE1.pref_fon2|| cl_fone1.nume_fon2 as celular,
CL_CLIE1.cpf_cnpj as cnpj_cnpf,
CL_CLIE1.ines_clie as ie_rg,
CL_CLIE1.emai_clie as email
from CL_CLIE1
left join ba_bair1 on  CL_CLIE1.codi_bair = ba_bair1.nr_reg
left join es_icms1 on  CL_CLIE1.codi_esta = es_icms1.nr_reg
left join cl_fone1 on CL_CLIE1.codi_fone = cl_fone1.nr_reg
