select
  fornecedores.FOR_CODIGO as CODIGO,
  fornecedores.FOR_NOME AS NOME,
  fornecedores.FOR_CNPJ AS CNPJ_CNPF,
  fornecedores.FOR_TELEFONE AS TELEFONE,
  fornecedores.FOR_FAX AS FAX,
  fornecedores.FOR_ENDERECO AS ENDERECO,
  fornecedores.FOR_BAIRRO AS BAIRRO,
  CIDADES.CID_NOME AS CIDADE,
  fornecedores.FOR_EMAIL AS EMAIL,
  fornecedores.FOR_CONTATO AS CONTATO,
  fornecedores.FOR_CEP AS CEP,
  fornecedores.FOR_INSC AS IE_RG,
  fornecedores.FOR_UF AS UF,
  fornecedores.FOR_ENDERECO_NUMERO AS NUMERO
  from fornecedores
  LEFT JOIN CIDADES ON CIDADES.CID_CODIGO = FORNECEDORES.CID_CODIGO
