SELECT
  cadclientes.NOME AS NOME,
  cadclientes.NOMEF AS FANTASIA,
  cadclientes.ENDERECO AS ENDERECO,
  cadclientes.NUMERO AS NUMERO,
  cadclientes.COMPL AS COMPLEMENTO,
  cadclientes.BAIRRO AS BAIRRO,
  cadclientes.CIDADE AS CIDADE,
  cadclientes.UF AS UF,
  cadclientes.CEP AS CEP,
  cadclientes.CNPJ AS CNPJ_CNPF,
  cadclientes.IE AS IE_RG,
  cadclientes.EMAIL AS EMAIL,
  cadclientes.FONE1 AS TELEFONE,
  cadclientes.CELULAR AS CELULAR,
  cadclientes.FAX AS FAX,
  cadclientes.CONTATO AS CONTATO,
  cadclientes.OBS AS OBSERVACOES
FROM cadclientes
WHERE TIPO = 'C'
