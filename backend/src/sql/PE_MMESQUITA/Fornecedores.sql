select TBL_ENTIDADES.CD_ENTIDADE as codigo,
TBL_ENTIDADES.DS_ENTIDADE as nome,
TBL_ENTIDADES.DS_FANTASIA as fantasia,
TBL_ENTIDADES.DS_ENDERECO as endereco,
TBL_ENTIDADES.DS_BAIRRO as bairro,
TBL_ENTIDADES.DS_COMPLEMENTO as complemento,
TBL_ENTIDADES.DS_EMAIL as email,
TBL_ENTIDADES.DS_OBS as observacoes,
TBL_ENTIDADES.NR_CEP as cep,
TBL_ENTIDADES.NR_NUMERO as numero,
concat(TBL_ENTIDADES.NR_DDD,TBL_ENTIDADES.NR_TELEFONE) as telefone,
concat(TBL_ENTIDADES.NR_DDD_CELULAR,TBL_ENTIDADES.NR_CELULAR) as celular,
TBL_ENTIDADES.NR_CPFCNPJ as cnpj_cnpf,
TBL_ENTIDADES.nr_ie as ie_rg,
TBL_ENDERECO_CIDADES.DS_CIDADE as cidade,
TBL_ENDERECO_CIDADES.DS_UF as uf
from TBL_ENTIDADES
left join TBL_ENDERECO_CIDADES on TBL_ENTIDADES.CD_CIDADE=TBL_ENDERECO_CIDADES.CD_CIDADE
WHERE TBL_ENTIDADES.X_FORNECEDOR=1


