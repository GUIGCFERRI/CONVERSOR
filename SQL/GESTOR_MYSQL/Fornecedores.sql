select
  fornecedores.codigo as codigo,
  fornecedores.nome as nome,
  fornecedores.fantazia as fantasia,
  fornecedores.endereco as endereco,
  fornecedores.numero as numero,
  fornecedores.bairro as bairro,
  fornecedores.cidade as cidade,
  fornecedores.cep as cep,
  fornecedores.uf as uf,
  case when fornecedores.cnpj = '' then fornecedores.cpf else fornecedores.cnpj end as cnpj_cnpf,
  case when fornecedores.rg = '' then fornecedores.ie else fornecedores.rg end as ie_rg,
  fornecedores.municipal as im,
  fornecedores.telefone as telefone,
  fornecedores.fax as fax,
  fornecedores.celular as celular,
  fornecedores.contato as contato,
  fornecedores.email as email,
  fornecedores.obs as observacoes
from fornecedores

