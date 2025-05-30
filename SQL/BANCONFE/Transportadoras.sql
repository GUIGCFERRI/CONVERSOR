SELECT
  cadclientes.NOME AS RAZAO_SOCIAL,
  cadclientes.ENDERECO AS ENDERECO,
  cadclientes.NUMERO AS NUMERO,
  cadclientes.CIDADE AS CIDADE,
  cadclientes.UF AS UF,
  cadclientes.CNPJ AS CNPJ,
  cadclientes.IE AS IE,
  cadclientes.EMAIL AS EMAIL,
  cadclientes.FONE1 AS TELEFONE
FROM cadclientes
WHERE TIPO = 'T'
