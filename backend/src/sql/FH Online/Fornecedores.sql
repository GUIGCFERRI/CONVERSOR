SELECT 
       [Cod fornecedor] AS CODIGO
      ,[Nome fantasia] AS FANTASIA
      ,[Nome fornecedor] AS NOME
      ,case when [Cnpj] = '' or [Cnpj] is null then [Cpf] else [Cnpj] END AS CNPJ_CNPF
      ,[Rg] AS IE_RG
      ,[Insc municipal] AS IM
      ,[Endereço fornecedor] AS ENDERECO
      ,[Num endereco] AS NUMERO
      ,[Complemento] AS COMPLEMENTO
      ,[Bairro] AS BAIRRO
      ,[Cep] AS CEP
      ,[Cidade] AS CIDADE
      ,[Uf] AS UF
      ,[Tel forn] AS TELEFONE
      ,[Fax forn] AS FAX
      ,[Celular] AS CELULAR
      ,[Email] AS EMAIL
      ,[Obs] AS OBSERVACOES
  FROM [BDFINANC].[dbo].[Fornecedores]
  WHERE [Pessoa] = '1'
