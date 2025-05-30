SELECT 
       Clientes.Codigo as codigo
      ,Clientes.Cliente as nome
      ,Clientes.RazaoSocial as fantasia
      ,Clientes.Contato as contato
      ,case when Clientes.CPF = '' or Clientes.CPF is null then Clientes.CNPJ else Clientes.CPF END AS CNPJ_CNPF
      ,case when Clientes.RG = '' or Clientes.RG is null then Clientes.CGF else Clientes.RG END AS IE_RG
      ,ENDERECOS.ENDERECO as endereco
      ,Clientes.Numero as numero
      ,Clientes.Complemento as complemento
      ,ENDERECOS.BAIRRO as bairro
      ,Cidades.CIDADE as cidade
      ,Cidades.uf as uf
      ,ENDERECOS.CEP as cep
      ,Clientes.Fone1 as telefone
      ,Clientes.Fone2 as celular
      ,Clientes.Email as email
      ,Clientes.Credito as limite_credito
      ,Clientes.Pai as pai
      ,Clientes.Mae as mae
      ,Clientes.Observacao as observacoes
      ,cast (Clientes.Cadastro as date) as cadastro
  FROM BASEI9.dbo.Clientes
left join BASEI9.dbo.ENDERECOS on ENDERECOS.CODIGO = Clientes.E_Endereco
left join BASEI9.dbo.Cidades on Cidades.codigo = ENDERECOS.E_CIDADE