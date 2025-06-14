SELECT
  CLI_CODI AS CODIGO,
  CLI_NOME AS NOME,
  CLI_NOME2 AS FANTASIA,
  CLI_CONT AS CONTATO,
  COALESCE(NULLIF(CLI_CGC, ''), CLI_CPF) AS CNPJ_CNPF,
  CLI_CGF AS IE_RG,
  CLI_LOGR AS ENDERECO,
  CLI_CEND AS NUMERO,
  CLI_OBSE AS COMPLEMENTO,
  CLI_BAIR AS BAIRRO,
  CLI_LOCAL AS CIDADE,
  CLI_UF AS UF,
  CLI_CEP AS CEP,
  CLI_FONE AS TELEFONE,
  CLI_CELULAR AS CELULAR,
  CLI_FAX AS FAX,
  CLI_EMAIL AS EMAIL,
  CLI_REND AS RENDA,
  CLI_LIMC AS LIMITE_CREDITO,
  CAST(CLI_DCAD AS DATE) AS CADASTRO,
  CLI_OBSE AS OBSERVACOES
FROM TB_CLIE;