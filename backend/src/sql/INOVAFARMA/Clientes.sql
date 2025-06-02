SELECT 
       c.CodigoCadastro as codigo
      ,c.Nome as nome
      ,c.NomeFantasia as fantasia
      ,c.CPFCNPJ as cnpj_cnpf
      ,case when c.RG = '' or c.RG is null then c.IE else c.RG END AS IE_RG
      ,ce.Endereco as endereco
      ,ce.Numero as numero
      ,ce.Complemento as complemento
      ,cb.NomeBairro as bairro
      ,cc.NomeCidade as cidade
      ,cc.UF as uf
      ,ce.Cep as cep
      ,max (ccte.Identificacao) as telefone
      ,min (ccc.Identificacao) as celular
      ,min (cce.Identificacao) as email
      ,c.CodigoLancamento as observacoes
      ,c.Sexo as sexo
      ,cast (c.DataNascimento as date) as nascimento
      ,cast (c.DataCadastro as date) as cadastro
  FROM farmaciaipira.dbo.Cadastro as c
left join farmaciaipira.dbo.Cadastro_Endereco ce on c.CodigoCadastro = ce.CodigoCadastro
left join farmaciaipira.dbo.Cadastro_Bairro cb on ce.CodigoBairro = cb.CodigoBairro
left join farmaciaipira.dbo.Cadastro_Cidade cc on cb.CodigoCidade = cc.CodigoCidade
left join farmaciaipira.dbo.Cadastro_Contato ccte on c.CodigoCadastro = ccte.CodigoCadastro and ccte.CodigoTipo = '1'
left join farmaciaipira.dbo.Cadastro_Contato ccc on c.CodigoCadastro = ccc.CodigoCadastro and ccte.CodigoTipo = '2'
left join farmaciaipira.dbo.Cadastro_Contato cce on c.CodigoCadastro = cce.CodigoCadastro and ccte.CodigoTipo = '4'
where c.CodigoCadastro <> '0'
group by 
       c.CodigoCadastro
      ,c.CodigoLancamento
      ,c.Nome
      ,c.NomeFantasia
      ,c.CPFCNPJ
      ,c.RG
      ,ce.Endereco
      ,ce.Numero
      ,ce.Complemento
      ,cb.NomeBairro
      ,cc.NomeCidade
      ,cc.UF
      ,ce.Cep
      ,c.DataNascimento
      ,c.Sexo
      ,c.DataCadastro
      ,c.IE