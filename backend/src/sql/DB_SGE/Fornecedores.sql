SELECT
  FOR_CODI AS CODIGO,
  FOR_RAZA AS NOME,
  FOR_NFAN AS FANTASIA,
  FOR_CONT AS CONTATO,
  COALESCE(NULLIF(FOR_CGC, ''), FOR_CPF) AS CNPJ_CNPF,
  FOR_CGF AS IE_RG,
  FOR_INSCM AS IM,
  FOR_LOGR AS ENDERECO,
  FOR_CEND AS NUMERO,
  FOR_OBS AS COMPLEMENTO,
  FOR_BAIR AS BAIRRO,
  FOR_LOCAL AS CIDADE,
  FOR_UF AS UF,
  FOR_CEP AS CEP,
  FOR_FONE AS TELEFONE,
  NULL AS CELULAR,
  FOR_FAX AS FAX,
  FOR_EMAIL AS EMAIL,
  FOR_OBS AS OBSERVACOES
FROM TB_FORN;