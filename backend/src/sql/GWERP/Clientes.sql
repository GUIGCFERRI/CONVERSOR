SELECT 
       cliente.cd_cliente as codigo
      ,cliente.Nome as nome
      ,cliente.fantasia as fantasia
      ,case when cliente.rg = '' or cliente.rg is null then cliente.InscricaoEstadual else cliente.rg END AS ie_rg
      ,cliente.CNPJ_CPF as cnpj_cnpf
      ,cliente.Insc_Municipal as im
      ,cliente.Email as email
      ,cep.Logradouro as endereco
      ,Bairro.bairro as bairro
      ,cliente.End_complemento as numero
      ,cidade.ds_cidade as cidade
      ,uf.cd_uf as uf
      ,cep.cep as cep
      ,CONCAT (cliente.cd_ddd , '' , cliente.Telefones) AS telefone 
      ,cliente.celular AS celular
      ,cliente.Obs as observacoes
      ,cast (cliente.dt_nasc as date) as nascimento
      ,cliente.limite_credito as limite_credito
      ,cast (cliente.dt_cadastro as date) as cadastro
      ,cliente.Sexo as sexo
      ,cliente.Nome_mae as mae
      ,cliente.Nome_pai as pai
      ,cliente.Conjuge as conjuge
  FROM GWERP.dbo.cliente
left join GWERP.dbo.cep on cep.cepID = cliente.cepID
left join GWERP.dbo.Bairro on Bairro.bairroId = cep.bairroid
left join GWERP.dbo.cidade on cidade.cidadeid = bairro.cidadeid
left join GWERP.dbo.uf on uf.ufid = cidade.ufid