SELECT
  FORNECEDORES.CODIGO AS CODIGO,
  FORNECEDORES.NOME AS NOME,
  FORNECEDORES.FANTASIA AS FANTASIA,
  FORNECEDORES.CONTATO AS CONTATO,
  FORNECEDORES.CNPJ AS CNPJ_CNPF,
  FORNECEDORES.IE AS IE_RG,
  FORNECEDORES.TELEFONE AS TELEFONE,
  FORNECEDORES.CELULAR AS CELULAR,
  FORNECEDORES.FAX AS FAX,
  substring(fornecedores.observacoes from 1 for 1000) AS OBSERVACOES,
  FOR_ADICIONAIS.EMAIL AS EMAIL,
  FOR_ENDERECOS.PAIS AS PAIS_NOME,
  FOR_ENDERECOS.ENDERECO,
  FOR_ENDERECOS.NUMERO,
  FOR_ENDERECOS.COMPLEMENTO,
  FOR_ENDERECOS.BAIRRO,
  FOR_ENDERECOS.CIDADE,
  FOR_ENDERECOS.UF,
  FOR_ENDERECOS.CEP
FROM FORNECEDORES
  LEFT JOIN FOR_ENDERECOS ON FORNECEDORES.CODIGO = FOR_ENDERECOS.CODIGO
  LEFT JOIN FOR_ADICIONAIS ON FORNECEDORES.CODIGO = FOR_ADICIONAIS.CODIGO
