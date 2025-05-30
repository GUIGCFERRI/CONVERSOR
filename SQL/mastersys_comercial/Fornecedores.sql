select
  integrante.NOME as nome,
  integrante.CONTATO_NOME as contato,
  case when integrante.PESSOA_FISICA_cpf = '' or integrante.PESSOA_FISICA_cpf is null then integrante.DOCUMENTO else integrante.PESSOA_FISICA_cpf END AS CNPJ_CNPF,
  case when integrante.PESSOA_FISICA_RG = '' or integrante.PESSOA_FISICA_RG is null then integrante.PESSOAJURIDICA_INSCRICAO_ESTADUAL else integrante.PESSOA_FISICA_RG END AS IE_RG,
  integrante.ENDERECO_LOGRADOURO AS ENDERECO,
  integrante.ENDERECO_NUMERO as numero,
  integrante.ENDERECO_COMPLEMENTO as complemento,
  integrante.ENDERECO_BAIRRO as bairro,
  integrante.ENDERECO_CEP as cep,
  municipio.descricao as cidade,
  municipio.uf as uf,
  integrante.CONTATO_TELEFONE_1 as telefone,
  integrante.CONTATO_CELULAR_1 as celular,
  integrante.CONTATO_EMAIL as email,
  integrante.OBSERVACAO as observacoes
from integrante
LEFT JOIN MUNICIPIO ON MUNICIPIO.CODIGO = integrante.ENDERECO_municipio 
where integrante.tipo = 'FORNECEDOR'
