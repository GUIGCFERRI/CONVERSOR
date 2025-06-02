select fornecedor.FO_CODIGO as codigo,
endereco.EN_CGCCPF as cnpj_cnpf,
endereco.EN_UFSIGLA as uf,
endereco.EN_FANTASIA as fantasia,
endereco.EN_ENDERECO as endereco,
endereco.EN_COMPLEMENTO as complemento,
endereco.en_bairro as bairro,
endereco.en_cep as cep,
endereco.en_cidade as cidade,
endereco.EN_TELEFONE as telefone,
endereco.en_fax as fax,
endereco.EN_IERG as ie_rg,
endereco.EN_CELULAR as celular,
endereco.EN_NUMERO as numero,
endereco.EN_EMAIL as email,
endereco.EN_OBSERVACAO as observacoes,
endereco.EN_RASOCIAL as nome
from Megasul_SQL.dbo.fornecedor
left join Megasul_SQL.dbo.ENDERECO on fornecedor.FO_ENCODIGO=endereco.EN_CODIGO
