SELECT
  cod AS CODIGO,
  nome AS NOME,
  razao AS FANTASIA,
  cpf AS CNP_CNPF,
  ie||rg,
  rua AS ENDERECO,
  num AS NUMERO,
  ba AS BAIRRO,
  uf AS UF,
  cep AS CEP,
  fone AS TELEFONE,
  fax AS FAX,
  cel AS CELULAR,
  email AS EMAIL
FROM CAD_FORN
