select cliente.CL_CODIGO as codigo,
cliente.CL_CGCCPF as cnpj_cnpf,
cliente.cl_nome as nome,
endereco.EN_UFSIGLA as uf,
endereco.EN_FANTASIA as fantasia,
endereco.EN_ENDERECO as endereco,
endereco.EN_COMPLEMENTO as complemento,
endereco.EN_BAIRRO as bairro,
endereco.en_cep as cep,
endereco.en_cidade as cidade,
endereco.EN_TELEFONE as telefone,
endereco.en_fax as fax,
endereco.EN_IERG as ie_rg,
endereco.EN_CELULAR as celular,
endereco.EN_NUMERO as numero,
endereco.EN_EMAIL as email,
endereco.EN_OBSERVACAO as observacoes
from Megasul_SQL.dbo.cliente 
left join Megasul_SQL.dbo.ENDERECO on cliente.CL_ENCODIGO=endereco.EN_CODIGO

