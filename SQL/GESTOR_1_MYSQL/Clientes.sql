select
  ID as codigo,
  NOME_RAZAO as nome,
  NOME_FANTASIA as fantasia,
  CPF_CNPJ as cnpj_cnpf,
  RG_IE as ie_rg,
  ENDERECO as endereco,
  NUMERO as mumero,
  COMPLEMENTO as complemento,
  BAIRRO as bairro,
  MUNICIPIO as cidade,
  UF as uf,
  CEP as cep,
  TELEFONE as telefone,
  END_ELETRONICO as email
from cliente
where NOME_RAZAO is not null