SELECT 
       CLIENTE.[CDCLIENTE] AS CODIGO
      ,CLIENTE.[NOME] AS NOME
      ,CLIENTE.[FANTASIA]
      ,CLIENTE.[ENDERECO]
      ,BAIRRO.NOME AS BAIRRO
      ,CLIENTE.[CEP]
      ,CIDADE.NOME AS CIDADE
      ,CLIENTE.[CGC] AS CNPJ_CNPF
      ,CLIENTE.[IE] AS IE_RG
      ,CLIENTE.[LIMITE]AS LIMITE_CREDITO
      ,CLIENTE.[TELEFONES] AS TELEFONE
      ,CLIENTE.[FAX]
      ,CLIENTE.[ESTADO] AS UF
      ,CLIENTE.[EMAIL]
      ,CLIENTE.[NUMERO]
      ,CLIENTE.[COMPLEMENTO]
  FROM [ESystem].[dbo].[CLIENTE]
  left join [ESystem].[dbo].[BAIRRO] on CLIENTE.CDBAIRRO = BAIRRO.CDBAIRRO
  LEFT JOIN [ESystem].[dbo].[CIDADE] ON CLIENTE.CDCIDADE = CIDADE.CDCIDADE
