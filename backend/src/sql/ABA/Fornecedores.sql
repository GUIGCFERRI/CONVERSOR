SELECT
  ID AS CODIGO,
  NOME,
  FANTASIA,
  CONCAT_WS(' / ', CONTATO1, CONTATO2) AS CONTATO,
  CNPJ AS CNPJ_CNPF,
  IE AS IE_RG,
  IM,
  ENDERECO,
  NUMERO,
  COMPLEMENTO,
  BAIRRO,
  CIDADE,
  UF,
  CEP,
  CONCAT_WS(' / ', TELEFONE1, TELEFONE2) AS TELEFONE,
  CONCAT_WS(' / ', CELULAR1, CELULAR2) AS CELULAR,
  FAX,
  EMAIL,
  CONCAT_WS(' | ', OBS1, OBS2, OBS3) AS OBSERVACOES
FROM
  fornecedor;