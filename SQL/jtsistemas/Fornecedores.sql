select
  codigoFornecedor as codigo,
  nome as nome,
  sigla as fantasia,
  case when rg = '' or rg is null then ie else rg END AS IE_RG,
  case when cpf = '' or cpf is null then cnpj else cpf END AS CNPJ_CNPF,
  im as im,
  contato as contato,
  concat (ddd1, '' ,telefone) as telefone,
  concat (ddd2, '' ,celular) as celular,
  concat (ddd_fax, '' ,fax) as fax,
  email as email,
  cep as cep,
  endereco as endereco,
  numero as numero,
  bairro as bairro,
  complemento as complemento,
  obs
from fornecedor 
