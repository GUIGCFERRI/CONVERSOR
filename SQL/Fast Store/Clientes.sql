SELECT 
       id_pessoa as codigo
      ,nome as nome
      ,fantasia as fantasia
      ,endereco as endereco
      ,numero as numero
      ,compl as complemento
      ,cidade as cidade
      ,uf as uf
      ,cep as cep
      ,CONCAT (ddd_fone1 , '' , fone1) as telefone
      ,CONCAT (ddd_fax , '' , fax) as fax
      ,CONCAT (ddd_celular , '' , celular) as celular
      ,e_mail as email
      ,contato as contato
      ,cgc_cpf as cnpj_cnpf
      ,ie_rg as ie_rg
      ,obs as observacoes
      ,sexo as sexo
      ,cast (dt_nasc as date) as nascimento
      ,limite_cr as limite_credito
      ,pai as pai
      ,mae as mae
      ,InscrMunicipal as im
      ,cast (Dt_Cadastro as date) as cadastro
      ,cast (DataUltimaCompra as date) as ultima_compra
      ,EstadoCivil as est_civil
      ,conjuge as conjuge
      ,case when ativo = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
      ,naturalidade as naturalidade
  FROM DBFastSoft.dbo.cd_pessoa
  where tp_pessoa = 'CL' OR tp_pessoa <> 'FO' ---CLIENTES
