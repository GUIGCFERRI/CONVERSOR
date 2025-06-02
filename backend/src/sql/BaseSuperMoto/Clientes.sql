SELECT 
       [C�digo do Cliente] AS CODIGO
      ,[Raz�o Social] AS FANTASIA
      ,[Nome do Cliente] AS NOME
      ,[Contato] AS CONTATO
      ,[CGC] AS CNPJ_CNPF
      ,case when [RG] = '' or [RG] is null then [Inscri��o Estadual] else [RG] END AS IE_RG
      ,[Inscri��o Estadual]
      ,[Endere�o] AS ENDERECO
      ,[Ponto de Refer�ncia] AS COMPLEMENTO
      ,[Num] AS NUMERO
      ,[Bairro] AS BAIRRO
      ,[Cidade] AS CIDADE
      ,[CEP] AS CEP
      ,[UF] AS UF
      ,[Fone Resid] AS TELEFONE
      ,[E-mail] AS EMAIL
      ,[Observa��es] AS OBSERVACOES
      ,[Limite Cr�dito] AS LIMITE_CREDITO
      ,[Conjuge] AS CONJUGE
      ,[Pai] AS PAI
      ,[Mae] AS MAE
      ,[Datanasc] AS NASCIMENTO
      ,[Dt Cadastro] AS CADASTRO
  FROM [BaseSuperMotos].[dbo].[Cadastro de Clientes]