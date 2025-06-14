SELECT 
       CLIENTE AS CODIGO
      ,NOME AS NOME
      ,RG AS IE_RG
      ,CPF AS CNPJ_CNPF
      ,ENDERECO AS ENDERECO
      ,NUMERO AS NUMERO
      ,COMPLEMENTO AS COMPLEMENTO
      ,BAIRRO AS BAIRRO
      ,CIDADE AS CIDADE
      ,CEP AS CEP
      ,UF AS UF
      ,TELEFONE_RES AS TELEFONE
      ,FAX AS FAX
      ,TELEFONE_CEL AS CELULAR
      ,EMAIL AS EMAIL
      ,OBS AS OBSERVACOES
      ,ESTADO_CIVIL AS EST_CIVIL
      ,SEXO AS SEXO
      ,PAI AS PAI
      ,MAE AS MAE
      ,CAST (DATA_NASC AS DATE) AS NASCIMENTO
      --,CAST (DATA_CADASTRO AS DATE) AS CADASTRO
  FROM DiegoAndinoReta.dbo.CLIENTES
