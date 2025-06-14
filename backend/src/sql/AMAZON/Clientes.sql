SELECT 
       CLIENTE.CDCLIENTE AS CODIGO
      ,CLIENTE.NOME AS NOME
      ,CLIENTE.FANTASIA AS FANTASIA
      ,CLIENTE.CONTATO AS CONTATO
      ,CLIENTE.CGC AS CNPJ_CNPF
      ,CLIENTE.IE AS IE_RG
      ,CLIENTE.IM AS IM
      ,CLIENTE.ENDERECO AS ENDERECO
      ,CLIENTE.NUMERO AS NUMERO
      ,CLIENTE.COMPLEMENTO AS COMPLEMENTO
      ,BAIRRO.NOME AS BAIRRO
      ,CLIENTE.CEP AS CEP
      ,CIDADE.NOME AS CIDADE
      ,CIDADE.ESTADO AS UF
      ,CLIENTE.TELEFONES AS TELEFONE
      ,CLIENTE.FAX AS FAX
      ,CLIENTE.EMAIL AS EMAIL
      ,CLIENTE.LIMITE AS LIMITE_CREDITO
      ,CAST (CLIENTE.DATA AS DATE) AS CADASTRO
      ,CLIENTE.OBS  AS OBSERVACOES
      ,CLIENTE.CONJUGE AS CONJUGE
      ,CLIENTE.DATANASCIMENTO AS NASCIMENTO   
      ,CLIENTE.SEXO AS SEXO
  FROM CLIENTE
  LEFT JOIN BAIRRO ON BAIRRO.CDBAIRRO = CLIENTE.CDBAIRRO
  LEFT JOIN CIDADE ON CIDADE.CDCIDADE = CLIENTE.CDCIDADE
