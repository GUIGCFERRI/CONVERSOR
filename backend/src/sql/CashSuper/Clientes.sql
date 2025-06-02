SELECT 
       Clientes.Id as codigo
      ,Clientes.Nome as nome
      ,Clientes.NomeAbreviado as fantasia
      ,Clientes.CNPJ as cnpj_cnpf
      ,case when Clientes.Identidade = '' or Clientes.Identidade is null then Clientes.InscricaoEstadual else Clientes.Identidade END AS IE_RG
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
      ,Clientes.NomePai as pai
      ,Clientes.NomeMae as mae
      ,Clientes.Observacoes as observacoes
      ,Clientes.LimiteCredito as limite_credito
      ,cast (Clientes.UltimaVenda as date) as ultima_venda
      ,cast (Clientes.DataNascimento as date) as nascimento
      ,cast (Clientes.DataCadastro as date) as cadastro
  FROM CashSuper.dbo.Clientes
left join CashSuper.dbo.Enderecos on Enderecos.IdEntidade = Clientes.Id
left join CashSuper.dbo.Municipios on Municipios.cdMunicipio = Enderecos.Municipio
where Clientes.Id <> '000000'