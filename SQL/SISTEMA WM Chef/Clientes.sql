SELECT 
       substring ([Código Cliente],2,7) as codigo
      ,[Nome Cliente]  as nome
      ,[Apelido] as contato
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
      ,[Email] as email
      ,cast ([Data Nascimento] as date) as nascimento
      ,[Sexo] as sexo
      ,[Estado Civil] as est_civil
      ,[Naturalidade] as naturalidade
      ,[Nome Pai] as pai
      ,[Nome Mãe] as mae
      ,[Observações] as observacoes
      ,[Limite Crédito] as limite_credito
      ,[Nome Cônjuge] as conjuge
      ,cast ([Data Cadastro] as date) as cadastro
  FROM [WM_GalinhaGordaNovo].[dbo].[Clientes]