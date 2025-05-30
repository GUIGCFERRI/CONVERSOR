SELECT 
       [Código do Cliente] as codigo
      ,[Razão Social] as nome
      ,[Nome do Cliente] as fantasia
      ,[Endereço] as endereco
      ,[Bairro] as bairro
      ,[Cidade] as cidade
      ,[UF] as uf
      ,[Fone Resid] as telefone
      ,cast ([Datanasc] as date) as nascimento
      ,[Observações] as observacoes
      ,[CEP] as cep
      ,[CGC] as cnpj_cnpf
      ,case when [RG] = '' or [RG] is null then [Inscrição Estadual] else [RG] END AS IE_RG
      ,[Contato] as contato
      ,[Limite Crédito] as limite_credito
      ,[E-mail] as email
      ,[Conjuge] as conjuge
      ,[Pai] as pai
      ,[Mae] as mae
      ,[Num] as numero
      ,[InscricaoMunicipal] as im
      ,cast ([DataCadastro] as date) as cadastro
  FROM [BaseLaBelleForMen].[dbo].[Cadastro de Clientes]