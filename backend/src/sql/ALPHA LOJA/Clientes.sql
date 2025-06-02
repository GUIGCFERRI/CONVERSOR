SELECT Clientes.Codigo
      ,Clientes.Nome as fantasia
      ,Clientes.RazaoSocial as Nome
      ,Clientes.Endereco
      ,Clientes.CEP
      ,Clientes.Bairro
      ,Clientes.UF
      ,Cidades.Cidade
      ,Clientes.Fone as telefone
      ,Clientes.Contato
      ,Clientes.CNPJCPF as CNPJ_CNPF
      ,Clientes.CGFRG AS IE_RG
      ,Clientes.Email
  FROM AlphaLoja.dbo.Clientes
  LEFT JOIN AlphaLoja.dbo.Cidades on AlphaLoja.dbo.Clientes.Cidade = AlphaLoja.dbo.Cidades.Codigo