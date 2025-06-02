SELECT 
       substring ([C�digo Cliente],2,7) as codigo
      ,[Nome Cliente]  as nome
      ,[Apelido] as contato
      ,[Endere�o] as endereco
      ,[N�mero] as numero
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
      ,[Nome M�e] as mae
      ,[Observa��es] as observacoes
      ,[Limite Cr�dito] as limite_credito
      ,[Nome C�njuge] as conjuge
      ,cast ([Data Cadastro] as date) as cadastro
  FROM [WM_GalinhaGordaNovo].[dbo].[Clientes]