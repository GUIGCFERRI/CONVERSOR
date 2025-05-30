SELECT
       c.cd_cliente as codigo
      ,c.Nome as nome
      ,c.fantasia as fantasia
      ,c.CNPJ_CPF as cnpj_cnpf
      ,case when c.rg = '' or c.rg is null then c.InscricaoEstadual else c.rg END AS IE_RG
      ,c.Insc_Municipal as im
      ,cep.logradouro as endereco
      ,c.Num_End as numero
      ,c.End_Complemento as complemento
      ,b.bairro as bairro
      ,cd.ds_cidade as cidade
      ,cep.cep as cep
      ,uf.cd_uf as uf
      ,c.Telefones as telefone
      ,c.Celular as celular
      ,c.Email as email
      ,c.Obs as observacoes
      ,c.Sexo as sexo
      ,c.Nome_mae as mae
      ,c.Nome_pai as pai
      ,c.Est_civil as est_civil
      ,c.Conjuge as conjuge
      ,cast (c.dt_nasc as date) as nascimento
      ,c.limite_credito as limite_credito
      ,cast (c.dt_cadastro as date) as cadastro
      ,case when c.Ativo = '1' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM Gwnet.dbo.cliente as c
left join Gwnet.dbo.cep on c.cepID = cep.cepID
left join Gwnet.dbo.Bairro b on cep.bairroid = b.bairroid
left join Gwnet.dbo.cidade cd on b.cidadeid = cd.cidadeid
left join Gwnet.dbo.uf uf on cd.ufid = uf.ufid
where c.cd_cliente <> '999999'
