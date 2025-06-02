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
      ,InscrMunicipal as im
      ,case when ativo = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM DBFastSoft.dbo.cd_pessoa
  where tp_pessoa = 'FO' OR tp_pessoa <> 'CL' ---FORNECEDORES
