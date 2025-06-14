SELECT 
       PESSOAS_PESSOA.ID AS CODIGO
      ,PESSOAS_PESSOA.NOMERAZAOSOCIAL AS RAZAO_SOCIAL
      ,PESSOAS_PESSOA.CPFCNPJ AS CNPJ
      ,PESSOAS_PESSOA.RGIE AS IE
      ,PESSOAS_PESSOA.LOGRADOURO AS ENDERECO
      ,Pessoas_Cidades.Descricao AS CIDADE
      ,Pessoas_Estados.UF AS UF
      ,PESSOAS_PESSOA.TELEFONE1 AS TELEFONE
      ,PESSOAS_PESSOA.EMAIL AS EMAIL
  FROM sis.dbo.PESSOAS_PESSOA
  LEFT JOIN sis.dbo.Pessoas_Cidades ON Pessoas_Cidades.ID = PESSOAS_PESSOA.CIDADEID
  LEFT JOIN sis.dbo.Pessoas_Estados ON Pessoas_Estados.ID = Pessoas_Cidades.EstadoID
  WHERE FLAGTRANSPORTADOR = '1'