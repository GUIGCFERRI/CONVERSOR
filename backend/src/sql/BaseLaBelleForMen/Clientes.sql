SELECT 
       [C�digo do Cliente] as codigo
      ,[Raz�o Social] as nome
      ,[Nome do Cliente] as fantasia
      ,[Endere�o] as endereco
      ,[Bairro] as bairro
      ,[Cidade] as cidade
      ,[UF] as uf
      ,[Fone Resid] as telefone
      ,cast ([Datanasc] as date) as nascimento
      ,[Observa��es] as observacoes
      ,[CEP] as cep
      ,[CGC] as cnpj_cnpf
      ,case when [RG] = '' or [RG] is null then [Inscri��o Estadual] else [RG] END AS IE_RG
      ,[Contato] as contato
      ,[Limite Cr�dito] as limite_credito
      ,[E-mail] as email
      ,[Conjuge] as conjuge
      ,[Pai] as pai
      ,[Mae] as mae
      ,[Num] as numero
      ,[InscricaoMunicipal] as im
      ,cast ([DataCadastro] as date) as cadastro
  FROM [BaseLaBelleForMen].[dbo].[Cadastro de Clientes]