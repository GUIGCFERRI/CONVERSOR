SELECT 
       Cliente.Nome as nome
      ,Cliente.Fone as telefone
      ,Cliente.Celular as celular
      ,Cliente.Email as email
      ,Cliente.CPF as CNPJ_CNPF
      ,Cliente.RG as IE_RG
      ,ClienteEndereco.Endereco as Endereco
      ,ClienteEndereco.Bairro as bairro
      ,ClienteEndereco.Cidade as Cidade
      ,ClienteEndereco.UF as UF
      ,ClienteEndereco.CEP as CEP
      ,ClienteEndereco.Numero as Numero
      ,ClienteEndereco.Complemento as Complemento
      ,Cliente.DtNascimento as Nascimento
      ,Cliente.Obs as Observacoes
  FROM PetShopControl.dbo.Cliente
  LEFT JOIN PetShopControl.dbo.ClienteEndereco on ClienteEndereco.IDCliente = Cliente.IDCliente
