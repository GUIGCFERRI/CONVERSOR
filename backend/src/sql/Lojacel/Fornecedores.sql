SELECT
  cod_fornecedor     AS CODIGO,
  COALESCE(razao_social, nome) AS NOME,
  NULL               AS FANTASIA,       -- Não existe na tabela
  contato            AS CONTATO,
  cgcmf              AS CNPJ_CNPF,
  inscr              AS IE_RG,
  NULL               AS IM,             -- Não existe na tabela
  ender              AS ENDERECO,
  NULL               AS NUMERO,         -- Não existe na tabela
  NULL               AS COMPLEMENTO,    -- Não existe na tabela
  bairro             AS BAIRRO,
  cidade             AS CIDADE,
  estado             AS UF,
  cep                AS CEP,
  fone1              AS TELEFONE,
  fone_contato       AS CELULAR,
  fax                AS FAX,
  e_mail             AS EMAIL,
  NULL               AS OBSERVACOES    -- Não existe na tabela
FROM fornecedores;