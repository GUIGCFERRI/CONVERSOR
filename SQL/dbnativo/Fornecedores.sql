select
  tbfornecedor.chave as codigo,
  tbfornecedor.nome as nome,
  tbfornecedor.apelido as fantasia,
  tbfornecedor.contato as contato,
  tbfornecedor.cnpj as cnpj_cnpf,
  tbfornecedor.ie as ie_rg,
  tbfornecedor.logradouro as endereco,
  tbfornecedor.complemento as complemento,
  tbfornecedor.numero as numero,
  tbfornecedor.bairro as bairro,
  tbfornecedor.cep as cep,
  tbfornecedor.uf as uf,
  tbfornecedor.municipio as cidade,
  tbfornecedor.fone as telefone,
  tbfornecedor.celular as celular,
  tbfornecedor.email as email,
  tbfornecedor.observacao as observacoes
from tbfornecedor
