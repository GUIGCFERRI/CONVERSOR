select FO_FORN1.nr_reg as codigo,
FO_FORN1.nome_forn as nome,
FO_FORN1.ende_forn as endereco,
FO_FORN1.bair_forn as bairro,
FO_FORN1.cida_forn as cidade,
FO_FORN1.cep_forn as cep,
es_icms1.sigl_esta as uf,
FO_FORN1.fon1_forn as telefone,
FO_FORN1.fon2_forn as celular,
FO_FORN1.cont_forn as contato,
FO_FORN1.cnpj_forn as cnpj_cnpf,
FO_FORN1.ines_forn as ie_rg,
FO_FORN1.emai_forn as email
from FO_FORN1
left join es_icms1 on FO_FORN1.codi_esta = es_icms1.nr_reg
