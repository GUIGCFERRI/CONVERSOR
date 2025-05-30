SELECT 
       substring (cliente.cli_cd, 3,7) as codigo
      ,cliente.cli_nm as nome
      ,cliente.cli_nfantasia as fantasia
      ,cliente.cli_end as endereco
      ,cliente.cli_pontoref as complemento
      ,cliente.cli_bairro as bairro
      ,cliente.cli_endnum as numero
      ,cliente.cli_cidade as cidade
      ,cliente.cli_cep as cep
      ,cliente.cli_uf as uf
      ,cliente.cli_cpf_cnpj as cnpj_cnpf
      ,cliente.cli_rg as ie_rg
      ,cliente.cli_insc_mun as im
      ,cliente.cli_fone as telefone
      ,cliente.cli_fax as fax
      ,cliente.cli_celular as celular
      ,cliente.cli_email as email
      ,cliente.cli_obs as observacoes
      ,cliente.cli_limitecred as limite_credito
      ,cast (cliente.cli_dtnasc as date) as nascimento
      ,cast (cliente.cli_dtcad as date) as cadastro
      ,cliente.cli_estcivil as est_civil
  FROM bd_apollo.dbo.cliente
