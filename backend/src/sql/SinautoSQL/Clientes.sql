SELECT 
       [Cliente] as codigo
      ,[Nome]
      ,[Endereco]
      ,[Bairro]
      ,[Cidade]
      ,[UF]
      ,[CEP]
      ,[Inscricao] as ie_rg
      ,[CGC] as cnpj_cnpf
      ,[Fone] as telefone
      ,[Fantasia]
      ,[Fax]
      ,[EMail]
      ,[Complemento]
      ,[Numero]
      ,[Celular]
  FROM [SinautoSQL].[dbo].[Cad_Clientes]
  where Cliente <> 'AUTO'