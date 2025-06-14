SELECT 
       CLI_CDCLIE AS CODIGO
      ,concat (CLI_DDD,'',CLI_NRTELE) AS TELEFONE
      ,CLI_NMCLIE AS NOME
      ,CLI_NUMERO AS NUMERO
      ,CLI_COMPLE AS COMPLEMENTO
      ,concat (CLI_REFERE,' / ',CLI_OBSERV) AS OBSERVACOES
      ,CAST (CLI_DTNASC AS DATE) AS NASCIMENTO
      --,CAST (CLI_DTCADA AS DATE) AS CADASTRO
      ,CLI_ENDERE AS ENDERECO
      ,CLI_BAIRRO AS BAIRRO
      ,CLI_EMAIL AS EMAIL
      ,CLI_CPFCNPJ AS CNPJ_CNPF
      ,CLI_IDENTIFICACAO AS IE_RG
      ,CLI_CONTATOS AS CONTATO
      ,CLI_CEP AS CEP
      ,CLI_CIDADE AS CIDADE
      ,CLI_UF AS UF
  FROM Berp.dbo.TB_CADCLIEN
  WHERE CLI_NMCLIE <> '' 
