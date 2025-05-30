SELECT
       Clientes.CodCli as codigo
      ,Clientes.Nome as nome
      ,Clientes.Razao as fantasia
      ,Clientes.Ident as ie_rg
      ,Clientes.CPF as cnpj_cnpf
      ,Clientes.InscrMun as im
      ,Clientes.Endereco as endereco
      ,Clientes.Bairro as bairro
      ,Clientes.Numero as numero
      ,cidades.Nome as cidade
      ,Clientes.CEP as cep
      ,Clientes.Fone as telefone
      ,Clientes.Celular as celular
      ,Clientes.Fax as fax
      ,Clientes.Email as email
      ,cast (Clientes.Nascim as date) as nascimento
      ,cast (Clientes.Cadastro as date) as cadastro
  FROM DataPlugSoft.dbo.Clientes
  left join DataPlugSoft.dbo.Cidades on cidades.Codigo = Clientes.CodCity
