SELECT 
       [Geral].[Sequencia do geral] AS CODIGO
      ,[Geral].[Razão social] AS NOME
      ,[Geral].[Nome fantasia] AS FANTASIA
      ,[Geral].[Endereço] AS ENDERECO
      ,[Geral].[Complemento] AS COMPLEMENTO
      ,[Geral].[Nro] AS NUMERO
      ,[Geral].[Bairro] AS BAIRRO
      ,[Municipios].[Descrição do municipio] AS CIDADE
      ,[Municipios].[Uf] AS UF
      ,[Geral].[Cep] AS CEP
      ,[Geral].[Fone] AS TELEFONE
      ,[Geral].[Celular] AS CELULAR
      ,[Geral].[Cpf e cnpj] AS CNPJ_CNPF
      ,[Geral].[Rg e ie] AS IE_RG
      ,[Geral].[Observação] AS OBSERVACOES
      ,[Geral].[Email] AS EMAIL
  FROM [DADOSNFE].[dbo].[Geral]
LEFT JOIN [DADOSNFE].[dbo].[Municipios] ON [Municipios].[Sequencia do municipio] = [Geral].[Sequencia do municipio]
WHERE [Geral].[Fornecedor] = '1'
