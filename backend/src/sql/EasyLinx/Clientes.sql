SELECT 
       CLIEN
      ,RAZAO AS NOME
      ,FANTA AS FANTASIA
      ,CGC AS CNPJ_CNPF
      ,INSCR AS IE_RG
      ,ENDER AS ENDERECO
      ,BAIRR AS BAIRRO
      ,NUMER AS NUMERO
      ,COMPL AS COMPLEMENTO
      ,MUNIC AS CIDADE
      ,UF AS UF
      ,CEP AS CEP
      ,EMAIL AS EMAIL
      ,CONCAT (DDD,FONE1) AS TELEFONE 
      ,CONCAT (DDD,FONE2) AS CELULAR
      ,CONCAT (CLIEN, '/' ,OBSER) AS OBSERVACOES
      ,LIMCR AS LIMITE_CREDITO
      ,SEXO AS SEXO
      ,ESTADCIVIL AS EST_CIVIL
      ,CAST (DTCAD AS DATE) AS CADASTRO
  FROM EasyLinx.dbo.CADCLI