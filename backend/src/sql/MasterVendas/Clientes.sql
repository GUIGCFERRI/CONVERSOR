SELECT 
       Identificador as codigo
      ,Nome as nome
      ,NomeFantasia as fantasia
      ,CPFCNPJ as cnpj_cnpf
      ,RgInscEstadual as ie_rg
      ,Endereco as endereco
      ,Bairro as bairro
      ,Complemento as complemento
      ,Numero as numero
      ,CEP as cep
      ,Cidade as cidade
      ,UF as uf
      ,Telefone as telefone
      ,Celular as celular
      ,Email as email
      ,Obs as observacoes
      ,cast (DataCriacao as date) as cadastro
  FROM MasterVendas.dbo.Cliente