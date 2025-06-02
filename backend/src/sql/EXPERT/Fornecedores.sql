select
  cad_fornecedores.id as codigo,
  cad_fornecedores.razao_social as nome,
  cad_fornecedores.nome_fornecedor as fantasia,
  cad_fornecedores.contato as contato,
  cad_fornecedores.cpf_cnpj as cnpj_cnpf,
  cad_fornecedores.rg_ie as ie_rg,
  cad_fornecedores.endereco as endereco,
  cad_fornecedores.numero as numero,
  cad_fornecedores.complemento as complemento,
  cad_fornecedores.bairro as bairro,
  cad_fornecedores.cidade as cidade,
  cad_fornecedores.cep as cep,
  cad_fornecedores.uf as uf,
  cad_fornecedores.email as email,
  cad_fornecedores.telefone as telefone,
  cad_fornecedores.celular as celular,
  cad_fornecedores.fax as fax
from cad_fornecedores
