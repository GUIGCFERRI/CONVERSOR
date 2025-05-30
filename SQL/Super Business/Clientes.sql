SELECT 
       [Codigo do cliente] as codigo
      ,[Nome cliente] as nome
      ,[Fantasia] as fantasia
      ,[Contato] as contato
      ,[Cnpj_cpf] as cnpj_cnpf
      ,[Ie_rg] as ie_rg
      ,[Endere�o] as endereco
      ,[Numero] as numero
      ,[Complemento] as complememnto
      ,[Bairro] as bairro
      ,[C�digo cidade] as cidade
      ,[Estado] as uf
      ,[Cep] as cep
      ,[Fone] as telefone
      ,[Celular] as celular
      ,[Fax] as fax
      ,[Email] as email
      ,[Pai] as pai
      ,[M�e] as mae
      ,[C�njuge] as conjuge
      ,[Obs] as observacoes
      ,[Estado_civil] as est_civil
      ,[sexo] as sexo
      ,[Limite credito] as limite_credito
      ,cast ([Data_inclusao] as date) as cadastro
      ,cast ([Data_nasc] as date) as nascimento
  FROM [dados].[dbo].[Clientes]
