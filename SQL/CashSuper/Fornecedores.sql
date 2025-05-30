SELECT 
       Fornecedores.ID as codigo
      ,Fornecedores.RazaoSocial as nome
      ,Fornecedores.NomeFantasia as fantasia
      ,Enderecos.PessoaContato as contato
      ,Fornecedores.CNPJ as cnpj_cnpf
      ,Fornecedores.IE as ie_rg
      ,Enderecos.Endereco as endereco
      ,Enderecos.Numero as numero
      ,Enderecos.Complemento as complemento
      ,Enderecos.Bairro as bairro
      ,Municipios.nmMunicipio as cidade
      ,Municipios.nmSigla as uf
      ,Enderecos.CEP as cep
      ,Enderecos.Fone as telefone
      ,Enderecos.Celular as celular
      ,Enderecos.Fax as fax
      ,Enderecos.Email as email
      ,Fornecedores.Observacoes as observacoes
  FROM CashSuper.dbo.Fornecedores
left join CashSuper.dbo.Enderecos on Enderecos.IdEntidade = Fornecedores.ID
left join CashSuper.dbo.Municipios on Municipios.cdMunicipio = Enderecos.Municipio
