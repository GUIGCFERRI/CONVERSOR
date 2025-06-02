SELECT
  fornec.CODI AS CODIGO,
  fornec.NOME AS NOME,
  fornec.FANT AS FANTASIA,
  case when fornec.CNPJ = '' or fornec.CNPJ is null then fornec.CPF else fornec.CNPJ END AS CNPJ_CNPF,
  fornec.CGF AS IE_RG,
  fornec.ENDER AS ENDERECO,
  fornec.BAIRRO AS BAIRRO,
  fornec.CEP AS CEP,
  fornec.CIDADE AS CIDADE,
  fornec.ESTADO AS UF,
  fornec.FONE AS TELEFONE,
  fornec.FAX AS FAX,
  fornec.CELULAR AS CELULAR,
  fornec.REPRES AS CONTATO,
  fornec.EMAIL AS EMAIL,
  fornec.OBS1 AS OBSERVACOES
FROM fornec