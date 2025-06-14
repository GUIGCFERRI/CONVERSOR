SELECT
  FORNECEDOR.ID AS CODIGO,
  FORNECEDOR.NOME_DO_FORNECEDOR AS NOME,
  FORNECEDOR.NOME_FANTASIA AS FANTASIA,
  FORNECEDOR.INSC_FEDERAL AS CNPJ_CNPF,
  FORNECEDOR.ENDERECO AS ENDERECO,
  FORNECEDOR.NUMERO AS NUMERO,
  FORNECEDOR.BAIRRO AS BAIRRO,
  FORNECEDOR.CIDADE AS CIDADE,
  FORNECEDOR.CEP AS CEP,
  FORNECEDOR.ESTADO AS UF,
  FORNECEDOR.TELEFONE AS TELEFONE,
  FORNECEDOR.FAX AS FAX,
  FORNECEDOR.CELULAR AS CELULAR,
  FORNECEDOR.EMAIL AS EMAIL,
  FORNECEDOR.ANOTACAO AS OBSERVACOES,
  FORNECEDOR.REPRESENTANTE_NOME AS CONTATO,
  FORNECEDOR.INSC_ESTADUAL AS IE_RG
FROM FORNECEDOR
