SELECT 
       clientes.CodCli as codigo
      ,clientes.Nome as nome
      ,clientes.Fantasia as fantasia
      ,case when clientes.CPF = '' or clientes.CPF is null then clientes.CNPJ else clientes.CPF END AS CNPJ_CNPF
      ,clientes.IE as ie_rg
      ,clientes.Endereco as endereco
      ,clientes.Numero as numero
      ,clientes.Complemento as complemento
      ,clientes.Bairro as bairro
      ,clientes.CEP as cep
      ,Municipios.municipio as cidade
      ,Municipios.uf as uf
      ,clientes.Telefone as telefone
      ,clientes.Celular as celular
      ,clientes.Fax as fax
      ,clientes.Email as email
      ,clientes.Observacao as observacoes
  FROM Bancodados.dbo.Clientes
left join Bancodados.dbo.Municipios on Municipios.codmun = clientes.CodMun
  where Clientes.Cadfor = '1'
