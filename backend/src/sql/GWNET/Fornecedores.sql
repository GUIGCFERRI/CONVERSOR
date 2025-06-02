SELECT
       f.cd_fornecedor as codigo
      ,f.razao_social as nome
      ,f.fantasia as fantasia
      ,f.Contato as contato
      ,f.cnpj as cnpj_cnpf
      ,f.InscricaoEstadual as ie_rg
      ,f.InscricaoMunicipal as im
      ,cep.logradouro as endereco
      ,f.End_complemento as complemento
      ,b.bairro as bairro
      ,cd.ds_cidade as cidade
      ,cep.cep as cep
      ,uf.cd_uf as uf
      ,f.Telefones as telefone
      ,f.Celular as celular
      ,f.Fax as fax
      ,f.Email as email
      ,f.Obs as observacoes
  FROM Gwnet.dbo.fornecedor as f
left join Gwnet.dbo.cep on f.cepID = cep.cepID
left join Gwnet.dbo.Bairro b on cep.bairroid = b.bairroid
left join Gwnet.dbo.cidade cd on b.cidadeid = cd.cidadeid
left join Gwnet.dbo.uf uf on cd.ufid = uf.ufid
