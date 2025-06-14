SELECT
  FORNECEDOR.IDFORNECEDOR AS CODIGO,
  FORNECEDOR.NOME AS NOME,
  FORNECEDOR.CNPJ AS CNPJ_CNPF,
  FORNECEDOR.INSCEST AS IE_RG,
  FORNECEDOR.ENDERECO AS ENDERECO,
  FORNECEDOR.NUMERO AS NUMERO,
  FORNECEDOR.CEP AS CEP,
  FORNECEDOR.COMPLEMENTO AS COMPLEMENTO,
  FORNECEDOR.BAIRRO AS BAIRRO,
  FORNECEDOR.CIDADE AS CIDADE,
  FORNECEDOR.UF AS UF,
  FORNECEDOR.FONE AS TELEFONE,
  FORNECEDOR.CELULAR AS CELULAR,
  FORNECEDOR.FAX AS FAX,
  FORNECEDOR.OBS AS OBSERVACOES,
  FORNECEDOR.EMAIL AS EMAIL,
  FORNECEDOR.CONTATO AS CONTATO
FROM FORNECEDOR
