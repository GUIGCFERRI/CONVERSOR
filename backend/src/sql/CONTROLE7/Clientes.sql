SELECT
  cod AS CODIGO,
  data AS CADASTRO,
  nome AS NOME,
  razao AS FANTASIA,
  cpf AS CNPJ_CNPF,
  rg||ie AS IE_RG,
  rua AS ENDERECO,
  num AS NUMERO,
  ba AS BAIRRO,
  uf AS UF,
  cep AS CEP,
  fix AS TELEFONE,
  cel AS CELULAR,
  pai AS PAI,
  mae AS MAE,
  mail AS EMAIL
FROM CAD_CLIENTES
WHERE COD > 0
