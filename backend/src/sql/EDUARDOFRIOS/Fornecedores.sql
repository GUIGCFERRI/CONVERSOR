SELECT 
       Fornecedores.Codigo as codigo
      ,Fornecedores.Fornecedor as nome 
      ,Fornecedores.FANTASIA as fantasia
      ,Fornecedores.CNPJ as cnpj_cnpf
      ,Fornecedores.CGF as ie_rg
      ,Fornecedores.Endereco as endereco
      ,Fornecedores.Numero as numero
      ,Fornecedores.Complemento as complemento
      ,Fornecedores.Bairro as bairro
      ,Fornecedores.Cidade as cidade
      ,Fornecedores.Cep as cep
      ,Fornecedores.Uf as uf
      ,Fornecedores.Email as email
      ,Fornecedores.Fone1 as telefone
      ,Fornecedores.Fone2 as celular
      ,Fornecedores.Fone3 as fax
      ,Fornecedores.Contato as contato		
      ,Fornecedores.Observacao
  FROM EDUARDOFRIOS.dbo.Fornecedores
