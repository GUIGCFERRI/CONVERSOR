SELECT 
       [Código do Cliente] AS CODIGO
      ,[Razão Social] AS FANTASIA
      ,[Nome do Cliente] AS NOME
      ,[Contato] AS CONTATO
      ,[CGC] AS CNPJ_CNPF
      ,case when [RG] = '' or [RG] is null then [Inscrição Estadual] else [RG] END AS IE_RG
      ,[Inscrição Estadual]
      ,[Endereço] AS ENDERECO
      ,[Ponto de Referência] AS COMPLEMENTO
      ,[Num] AS NUMERO
      ,[Bairro] AS BAIRRO
      ,[Cidade] AS CIDADE
      ,[CEP] AS CEP
      ,[UF] AS UF
      ,[Fone Resid] AS TELEFONE
      ,[E-mail] AS EMAIL
      ,[Observações] AS OBSERVACOES
      ,[Limite Crédito] AS LIMITE_CREDITO
      ,[Conjuge] AS CONJUGE
      ,[Pai] AS PAI
      ,[Mae] AS MAE
      ,[Datanasc] AS NASCIMENTO
      ,[Dt Cadastro] AS CADASTRO
  FROM [BaseSuperMotos].[dbo].[Cadastro de Clientes]