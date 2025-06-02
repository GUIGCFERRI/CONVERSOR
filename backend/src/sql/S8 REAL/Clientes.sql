SELECT 
       Codigo as codigo
      ,Nome as nome
      ,Fantasia as fantasia
      ,Endereco as endereco
      ,Complemento as complemento
      ,Bairro as bairro
      ,Cidade as cidade
      ,Estado as uf
      ,CEP as cep
      ,CNPJ as cnpj_cnpf
      ,Inscricao as ie_rg
      ,Inscricao_Municipal as im
      ,Fone_1 as t6elefone
      ,Fone_2 as celular
      ,Fax as fax
      ,email as email
      ,Limite_Credito as limite_credito
      ,Data_Cadastro as cadastro
  FROM S8_Real.dbo.Cli_For
where tipo = 'C' and Codigo <> '0'
