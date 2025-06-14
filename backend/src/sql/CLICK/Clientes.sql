SELECT 
       ID AS CODIGO
      ,NOME AS NOME
      ,FANTASIA
      ,EMAIL
      ,CPF_CNPJ AS CNPJ_CNPF
      ,INSCRICAO_ESTADUAL AS IE_RG
      ,DATA_CADASTRO AS CADASTRO
      ,LOGRADOURO AS ENDERECO
      ,NUMERO
      ,COMPLEMENTO
      ,CEP
      ,BAIRRO
      ,CIDADE
      ,UF
      ,FONE1 AS TELEFONE
      ,FAX
      ,CELULAR
      ,CONTATO
      ,NOMEDOPAI AS PAI
      ,NOMEDAMAE AS MAE
  FROM click.dbo.CLIENTE