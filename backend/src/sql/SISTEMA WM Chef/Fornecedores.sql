SELECT 
       substring ([Código Fornecedor],2,7) as codigo
      ,[Nome Fornecedor] as nome
      ,[Razão Social] as fantasia
      ,[Endereço] as endereco
      ,[Número] as numero
      ,[Complemento] as complemento
      ,[Bairro] as bairro
      ,[Cidade] as cidade
      ,[Estado] as uf
      ,[CEP] as cep
      ,[Telefone] as telefone
      ,[Celular] as celular
      ,[Fax] as fax
      ,case when [CPF] = '' or [CPF] is null then [CNPJ] else [CPF] END AS CNPJ_CNPF
      ,case when [RG] = '' or [RG] is null then [IE] else [RG] END AS IE_RG
      ,[IM] as im
      ,[Nome Contato] as contato
      ,[Email] as email
      ,[Observações] as observacoes
  FROM [WM_GalinhaGordaNovo].[dbo].[Fornecedores]
