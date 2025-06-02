SELECT
       fornecedor.cd_fornecedor as codigo
      ,fornecedor.razao_social as nome
      ,fornecedor.fantasia as fantasia
      ,fornecedor.Contato as contato
      ,fornecedor.Email as email
      ,fornecedor.cnpj as cnpj_cnpf
      ,fornecedor.InscricaoEstadual as ie_rg
      ,fornecedor.InscricaoMunicipal as im
      ,cep.Logradouro as endereco
      ,Bairro.bairro as bairro
      ,fornecedor.End_complemento as numero
      ,cidade.ds_cidade as cidade
      ,uf.cd_uf as uf
      ,cep.cep as cep
      ,CONCAT (fornecedor.cd_ddd , '' , fornecedor.Telefones) AS telefone 
      ,CONCAT (fornecedor.ddd_fax , '' , fornecedor.Fax) AS fax
      ,CONCAT (fornecedor.ddd_celular , '' , fornecedor.Celular) AS celular
      ,fornecedor.Obs as observacoes
  FROM GWERP.dbo.fornecedor
left join GWERP.dbo.cep on cep.cepID = fornecedor.cepID
left join GWERP.dbo.Bairro on Bairro.bairroId = cep.bairroid
left join GWERP.dbo.cidade on cidade.cidadeid = bairro.cidadeid
left join GWERP.dbo.uf on uf.ufid = cidade.ufid