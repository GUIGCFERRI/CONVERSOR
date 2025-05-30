SELECT Clt_cadCliente.IdCliente
      ,Clt_cadCliente.Codigo
      ,Clt_cadCliente.Nome as Nome
      ,Clt_cadCliente.DataNasc as Nascimento
      ,Clt_cadCliente.Sexo as Sexo
      ,Clt_cadCliente.CPF as CNPJ_CNPF
      ,Clt_cadCliente.RG as IE_RG
      ,Clt_cadCliente.Obs as Observacoes
      ,Clt_cadCliente.NomeFantasia as Fantasia
      ,Clt_cadCliente.Profissao as Profissao
      ,Clt_cadCliente.Naturalidade as Naturalidade
      ,Clt_cadCliente.DataCadastro as Cadastro
      ,Clt_cadcontatos.Email as Email
      ,Clt_cadcontatos.Telefone as Telefone
      ,min(Clt_cadEnderecos.Endereco) as Endereco
      ,min(Clt_cadEnderecos.bairro) as Bairro
      ,min(Clt_cadEnderecos.Cidade) as Cidade
      ,min(Clt_cadEnderecos.UF) as UF
      ,min(Clt_cadEnderecos.cep) as CEP
      ,min(Clt_cadEnderecos.Numero) as Numero
      ,min(Clt_cadEnderecos.complemento) as Complemento	  
  FROM LexManager_DNA.dbo.Clt_cadCliente
  left join LexManager_DNA.dbo.Clt_cadEnderecos on LexManager_DNA.dbo.Clt_cadEnderecos.idcliente = LexManager_DNA.dbo.Clt_cadCliente.idcliente
  left join LexManager_DNA.dbo.Clt_cadContatos on LexManager_DNA.dbo.Clt_cadContatos.idcontato = LexManager_DNA.dbo.Clt_cadCliente.idcliente
  where clt_cadcliente.IdCliente>0
  group by Clt_cadCliente.IdCliente
      ,Clt_cadCliente.Codigo
      ,Clt_cadCliente.Nome 
      ,Clt_cadCliente.DataNasc
      ,Clt_cadCliente.Sexo
      ,Clt_cadCliente.CPF
      ,Clt_cadCliente.RG
      ,Clt_cadCliente.Obs
      ,Clt_cadCliente.NomeFantasia
      ,Clt_cadCliente.Profissao
      ,Clt_cadCliente.Naturalidade
      ,Clt_cadCliente.DataCadastro
      ,Clt_cadcontatos.Email
      ,Clt_cadcontatos.Telefone










