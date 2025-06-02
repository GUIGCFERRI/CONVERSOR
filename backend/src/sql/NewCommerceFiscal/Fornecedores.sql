SELECT 
       Fornecedor.ID as codigo
      ,Fornecedor.RazaoSocial as nome
      ,Fornecedor.NomeFantasia as fantasia
      ,Fornecedor.Responsavel as contato
      ,Fornecedor.CNPJ as cnpj_cnpf
      ,Fornecedor.IE as ie_rg
      ,Fornecedor.IM as im
      ,Fornecedor.Endereco as endereco
      ,Fornecedor.Numero as numero
      ,Fornecedor.Bairro as bairro
      ,Fornecedor.CEP as cep
      ,Cidades.nome as cidade
      ,Fornecedor.UF as uf
      ,Fornecedor.PontoRef as complemento
      ,Fornecedor.Telefone1 as telefone
      ,Fornecedor.Telefone2 as celular
      ,Fornecedor.Email as email
      ,Fornecedor.Observacao as observacoes
  FROM NewCommerce.dbo.Fornecedor
left join NewCommerce.dbo.Cidades on cidades.id = fornecedor.ID_Cidade
