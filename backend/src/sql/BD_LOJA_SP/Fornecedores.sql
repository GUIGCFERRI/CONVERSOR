SELECT
       Codigo as codigo
      ,Descricao as nome
      ,Fantasia as fantasia
      ,Contato as contato
      ,[Cgc ou Cpf] as cnpj_cnpf
      ,case when Rg = '' or Rg is null then IscEst else Rg END AS IE_RG
      ,InscMunicipal as im
      ,Endereco as endereco
      ,Bairro as bairro
      ,Cep as cep
      ,Cidade as cidade
      ,Uf as uf
      ,Fone as telefone
      ,Fax as fax
      ,Celular as celular
      ,Email as email
      ,Observacao as observacoes
  FROM BD_LOJA_SP.dbo.Fornecedor
