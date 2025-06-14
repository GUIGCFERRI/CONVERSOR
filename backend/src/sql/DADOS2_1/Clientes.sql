SELECT
  CLIENTE.CODIGO AS CODIGO,
  CLIENTE.CPF AS CNPJ_CNPF,
  CLIENTE.IDENTIDADE AS IE_RG,
  CLIENTE.NOME AS NOME,
  CLIENTE.DATA_NASCIMENTO AS NASCIMENTO,
  CLIENTE.FANTASIA AS FANTASIA,
  CLIENTE.ENDERECO AS ENDERECO,
  CLIENTE.NUMERO AS NUMERO,
  CLIENTE.COMPLEMENTO AS COMPLEMENTO,
  CLIENTE.BAIRRO AS BAIRRO,
  CLIENTE.CIDADE AS CIDADE,
  CLIENTE.UF AS UF,
  CLIENTE.CEP AS CEP,
  CLIENTE.TELEFONE AS TELEFONE,
  CLIENTE.CELULAR AS CELULAR,
  CLIENTE.EMAIL AS EMAIL,
  CLIENTE.OBSERVACAO AS OBSERVACOES
FROM CLIENTE
