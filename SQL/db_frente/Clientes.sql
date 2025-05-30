
SELECT 
       cod_cli as codigo
      ,data as cadastro
      ,nome as nome
      ,sexo as sexo
      ,cpf_cnpj as cnpj_cnpf
      ,ins_estadual as ie_rg
      ,ins_municipal as im
      ,endereco as endereco
      ,bairro as bairro
      ,cidade as cidade
      ,Estado as uf
      ,cep as cep
      ,email as email
      ,telefone as telefone
      ,fax as fax
      ,celular as celular

  FROM DB_Frente.dbo.Cliente
