SELECT 
       Clientes.Codigo as codigo
      ,Clientes.RazaoSocial as fantasia
      ,Clientes.Cliente as nome
      ,ENDERECOS.ENDERECO as endereco
      ,ENDERECOS.BAIRRO as bairro
      ,Cidades.Cidade as cidade
      ,Cidades.UF as uf
      ,ENDERECOS.CEP as cep
      ,Clientes.Numero as numero
      ,Clientes.Complemento as complemento
      ,Clientes.Email as email
      ,case when Clientes.CNPJ = '' or Clientes.CNPJ is null then Clientes.CPF else Clientes.CNPJ END AS cnpj_cnpf
      ,case when Clientes.CGF = '' or Clientes.CGF is null then Clientes.RG else Clientes.CGF END AS ie_rg
      ,Clientes.Fone1 as telefone
      ,Clientes.Fone2 as celular
      ,Clientes.Fax as fax
      ,Clientes.Observacao as observacoes
      ,Clientes.Contato as contato
      ,Clientes.DAniversario as nascimento
      ,Clientes.Pai as pai
      ,Clientes.Mae as mae
      ,Clientes.Credito as limite_credito
      ,Clientes.Cadastro as cadastro
  FROM EDUARDOFRIOS.dbo.Clientes
  left join EDUARDOFRIOS.dbo.ENDERECOS on ENDERECOS.CODIGO = Clientes.Codigo
  left join EDUARDOFRIOS.dbo.Cidades on Cidades.Codigo = ENDERECOS.E_CIDADE
