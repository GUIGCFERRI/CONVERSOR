SELECT 
       Clientes.Codigo as codigo
      ,Clientes.NomeCliente as nome
      ,case when Clientes.RG = '' or Clientes.RG is null then Clientes.IE else Clientes.RG END AS IE_RG
      ,Clientes.CpfCnpj as cnpj_cnpf
      ,Clientes.InscMunic as im
      ,Clientes.NomeContato as contato      
      ,Clientes.Endereco as endereco
      ,Clientes.NumeroImovel as numero
      ,Clientes.Bairro as bairro
      ,Clientes.Complemento as complemento
      ,Cidades.nomecidade as cidade
      ,Cidades.estado as uf
      ,Clientes.Cep as cep
      ,Clientes.Telefone as telefone
      ,Clientes.Email as email
      ,Clientes.Email as email
      ,Clientes.Limite as limite_credito
      ,Clientes.NomePai as pai
      ,Clientes.NomeMae as mae
      ,Clientes.Obs as observacoes
      ,Clientes.EstadoCivil as est_civil
      ,Clientes.ConjugeNome as conjuge
      ,Clientes.Sexo as sexo
      ,Clientes.DataCadastro as cadastro
  FROM bdroberto.dbo.Clientes
left join bdroberto.dbo.Cidades on Cidades.codigo = Clientes.Cidade
where Clientes.TipoCadastro <> '2' --CLIENTES
