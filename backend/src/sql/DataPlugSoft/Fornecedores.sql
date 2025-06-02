SELECT
       Fornecedores.CodFrn as codigo
      ,Fornecedores.Nome as fantasia
      ,Fornecedores.Razao as nome
      ,Fornecedores.CGC as cnpj_cnpf
      ,Fornecedores.InscrEst as ie_rg
      ,Fornecedores.InscrMun as im
      ,Fornecedores.Endereco as endereco
      ,Fornecedores.Bairro as bairro
      ,cidades.Nome as cidade
      ,Fornecedores.Num as numero
      ,Fornecedores.CEP as cep
      ,Fornecedores.Fone as telefone
      ,Fornecedores.Fax as fax
      ,Fornecedores.Contato as contato
      ,Fornecedores.Email as email
  FROM DataPlugSoft.dbo.Fornecedores
   left join DataPlugSoft.dbo.Cidades on cidades.Codigo = Fornecedores.CodCity
