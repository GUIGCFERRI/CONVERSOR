SELECT 
       Fornecedor.IDFornecedor as Codigo
      ,Fornecedor.RazaoSocial as Nome
      ,Fornecedor.CNPJ as CNPJ_CNPF
      ,Fornecedor.Contato as Contato
      ,Fornecedor.Fone as Telefone
      ,Fornecedor.Fax as FAX
      ,Fornecedor.Celular as Celular
      ,Fornecedor.Endereco as Endereco
      ,Fornecedor.Bairro as Bairro
      ,Fornecedor.Cidade as Cidade
      ,Fornecedor.UF as UF
      ,Fornecedor.CEP as CEP
      ,Fornecedor.Obs as Observacoes
      ,Fornecedor.IE as IE_RG
      ,Fornecedor.Email as Email
  FROM PetShopControl.dbo.Fornecedor
