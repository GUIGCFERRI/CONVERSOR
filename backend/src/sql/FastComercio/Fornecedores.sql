SELECT
  FORNECEDOR.CODIGO_FORNECEDOR AS CODIGO,
  FORNECEDOR.RAZAO_FORNECEDOR AS NOME,
  FORNECEDOR.FANTASIA_FORNECEDOR AS FANTASIA,
  FORNECEDOR.CNPJCPF_FORNECEDOR AS CNPJ_CNPF,
  FORNECEDOR.INSCRICAO_FORNECEDOR AS IE_RG,
  FORNECEDOR.ENDERECO_FORNECEDOR AS ENDERECO,
  FORNECEDOR.NUMEROEND_FORNECEDOR AS NUMERO,
  FORNECEDOR.COMPLEMENTOEND_FORNECEDOR AS COMPLEMENTO,
  FORNECEDOR.BAIRRO_FORNECEDOR AS BAIRRO,
  CIDADE.NOM_CIDADE AS CIDADE,
  ESTADO.SGL_ESTADO AS UF,
  FORNECEDOR.CEP_FORNECEDOR AS CEP,
  FORNECEDOR.EMAIL_FORNECEDOR AS EMAIL,
  FORNECEDOR.TELEFONE1_FORNECEDOR AS TELEFONE,
  FORNECEDOR.CELULAR_FORNECEDOR AS CELULAR,
  FORNECEDOR.FAX_FORNECEDOR AS FAX,
  FORNECEDOR.CONTATO_FORNECEDOR AS CONTATO,
  FORNECEDOR.OBSERVACAO_FORNECEDOR AS OBSERVACOES
FROM FORNECEDOR
LEFT JOIN CIDADE ON FORNECEDOR.COD_CIDADE = CIDADE.COD_CIDADE
LEFT JOIN ESTADO ON CIDADE.COD_ESTADO=ESTADO.COD_ESTADO
