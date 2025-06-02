  SELECT 
       [C�digo do Fornecedor] AS CODIGO
      ,[Fornecedor] AS NOME
      ,[Endere�o] AS ENDERECO
      ,[Bairro] AS BAIRRO
      ,[Cidade] AS CIDADE
      ,[UF] AS UF
      ,[Fone1] AS TELEFONE
      ,[CEP] AS CEP
      ,[Observa��es] AS OBSERVACOES
      ,[Contato] AS CONTATO
      ,[CGC/CPF] AS CNPJ_CNPF
      ,[Insc Estadual] AS IE_RG
      ,[E-mail] AS EMAIL
      ,[Fantasia] AS FANTASIA
      ,[InscricaoMunicipal] AS IM
      ,[Num] AS NUMERO
  FROM [BaseDistribuidoraAlbaNew].[dbo].[Fornecedores]
  where [Fornecedor] <> '' and [C�digo do Fornecedor] <> '1'
  order by [C�digo do Fornecedor] asc
