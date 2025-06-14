SELECT
  FORNECEDORES.FOR_CODIGO AS CODIGO,
  FORNECEDORES.FOR_CGCCPF AS CNPJ_CNPF,
  FORNECEDORES.FOR_INSCRI AS IE_RG,
  FORNECEDORES.FOR_NOME AS NOME,
  FORNECEDORES.FOR_NOMEFA AS FANTASIA,
  FORNECEDORES.FOR_ENDERE AS ENDERECO,
  FORNECEDORES.FOR_BAIRRO AS BAIRRO,
  FORNECEDORES.FOR_CIDADE AS CIDADE,
  FORNECEDORES.FOR_ESTADO AS UF,
  FORNECEDORES.FOR_CEP AS CEP,
  FORNECEDORES.FOR_CONTAT AS CONTATO,
  FORNECEDORES.FOR_OBSERV AS OBSERVACOES,
  FORNECEDORES.FOR_FONE AS TELEFONE,
  FORNECEDORES.FOR_FONE2 AS CELULAR,
  FORNECEDORES.FOR_FAX AS FAX,
  FORNECEDORES.FOR_EMAIL AS EMAIL
FROM FORNECEDORES
