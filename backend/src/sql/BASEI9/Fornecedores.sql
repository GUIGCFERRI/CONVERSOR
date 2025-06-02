SELECT 
       Fornecedores.Codigo as codigo
      ,Fornecedores.Fornecedor as nome
      ,Fornecedores.FANTASIA as fantasia
      ,Fornecedores.Contato as contato
      ,Fornecedores.CNPJ as cnpj_cnpf
      ,Fornecedores.CGF as ie_rg
      ,ENDERECOS.ENDERECO as endereco
      ,Fornecedores.Numero as numero
      ,Fornecedores.Complemento as complemento
      ,ENDERECOS.BAIRRO as bairro
      ,Cidades.CIDADE as cidade
      ,Cidades.uf as uf
      ,ENDERECOS.CEP as cep
      ,Fornecedores.Fone1 as telefone
      ,Fornecedores.Fone2 as celular
      ,Fornecedores.Email as email
      ,Fornecedores.Observacao as observacoes
  FROM BASEI9.dbo.Fornecedores
left join BASEI9.dbo.ENDERECOS on ENDERECOS.CODIGO = Fornecedores.E_Endereco
left join BASEI9.dbo.Cidades on Cidades.codigo = ENDERECOS.E_CIDADE