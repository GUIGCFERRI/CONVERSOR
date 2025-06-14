SELECT
  FORNECEDORES.IDFORNECEDOR AS CODIGO,
  FORNECEDORES.RAZAO AS NOME,
  FORNECEDORES.FANTASIA AS FANTASIA,
  FORNECEDORES.FONE1 AS TELEFONE,
  FORNECEDORES.FONE2 AS CELULAR,
  FORNECEDORES.FONE3 AS FAX,
  FORNECEDORES.CNPJCPF AS CNPJ_CNPF,
  case when FORNECEDORES.IE = '' or FORNECEDORES.IE is null then FORNECEDORES.RG else FORNECEDORES.IE END as IE_RG,
  FORNECEDORES.IM AS IM,
  FORNECEDORES.EMAIL1 AS EMAIL,
  FORNECEDORES.ENDERECO AS ENDERECO,
  FORNECEDORES.NUMERO AS NUMERO,
  FORNECEDORES.BAIRRO AS BAIRRO,
  FORNECEDORES.CIDADE AS CIDADE,
  FORNECEDORES.UF AS UF,
  FORNECEDORES.CEP AS CEP,
  FORNECEDORES.COMPLEMENTO AS COMPLEMENTO
FROM FORNECEDORES
