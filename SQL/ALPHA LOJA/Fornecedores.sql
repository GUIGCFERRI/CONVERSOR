
SELECT Fornecedores.Codigo
      ,Fornecedores.RazaoSocial as NOME
      ,Fornecedores.Fantasia
      ,Fornecedores.Endereco
      ,Fornecedores.CEP
      ,Fornecedores.Bairro
      ,Fornecedores.UF
      ,Cidades.Cidade
      ,Fornecedores.Fone AS TELEFONE
      ,Fornecedores.Fax
      ,Fornecedores.CNPJCPF AS CNPJ_CNPF
      ,Fornecedores.CGFRG AS IE_RG
      ,Fornecedores.Contato
      ,Fornecedores.Celular
      ,Fornecedores.Email
      ,Fornecedores.Numero
  FROM AlphaLoja.dbo.Fornecedores
LEFT JOIN AlphaLoja.dbo.Cidades on AlphaLoja.dbo.Fornecedores.Cidade = AlphaLoja.dbo.Cidades.Codigo