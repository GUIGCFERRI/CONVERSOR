select FORNECEDOR.FOR_CODIGO as codigo,
fornecedor.FOR_NOME as nome,
fornecedor.FOR_NOMEFANT as fantasia,
fornecedor.FOR_CGC as cnpj_cnpf,
fornecedor.FOR_INSCEST as ie_rg,
FORNECEDOR.FOR_NOMECONTATO as contato,
fornecedor.FOR_ENDERECO as endereco,
fornecedor.FOR_BAIRRO as bairro,
fornecedor.FOR_CIDADE as cidade,
fornecedor.for_cep as cep,
fornecedor.for_uf as uf,
concat(fornecedor.FOR_DDD,fornecedor.FOR_TELEFONE) as telefone,
fornecedor.FOR_TELEFONE2 as celular,
fornecedor.for_fax as fax,
fornecedor.FOR_EMAIL as email,
FORNECEDOR.FOR_OBS as observacoes
from fornecedor 


