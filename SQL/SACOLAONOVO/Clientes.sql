SELECT [Codigo]
      ,[NomeRazaoSocial] AS NOME
      ,[ApelidoFantasia] AS FANTASIA
      ,[CPFCNPJ] AS CNPJ_CNPF
      ,[RGIE] AS IE_RG
      ,[Endereco] 
      ,[Bairro]
      ,[Cidade]
      ,[UF]
      ,[CEP]
      ,[Telefone]
      ,[Celular]
      ,[Fax]
      ,[Contato]
      ,[Complemento]
      ,[Email]
  FROM [SACOLAONOVO].[dbo].[Clientes]
  WHERE CODIGO > 0
