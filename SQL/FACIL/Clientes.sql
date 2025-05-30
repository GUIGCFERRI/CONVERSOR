SELECT
       PESSOA.PES_Codigo as codigo
      ,case when FISICA.FIS_Nome = '' or FISICA.FIS_Nome is null then JURIDICA.JUR_RazaoSocial else FISICA.FIS_Nome END AS nome
      ,JURIDICA.JUR_NomeFantasia as fantasia
      ,case when FISICA.FIS_Cpf = '' or FISICA.FIS_Cpf is null then JURIDICA.JUR_Cnpj else FISICA.FIS_Cpf END AS cnpj_cnpf
      ,case when FISICA.FIS_Rg = '' or FISICA.FIS_Rg is null then JURIDICA.JUR_InscricaoEstadual else FISICA.FIS_Rg END AS ie_rg
      ,PESSOA.PES_Endereco as endereco
      ,PESSOA.PES_Complemento as complemento
      ,PESSOA.PES_NumeroEndereco as numero
      ,PESSOA.PES_Bairro as bairro
      ,PESSOA.PES_Cidade as cidade
      ,PESSOA.PES_Cep as cep
      ,PESSOA.PES_Uf as uf
      ,PESSOA.PES_Email as email
      ,PESSOA.PES_Telefone as telefone
      ,PESSOA.PES_Celular as celular
      ,PESSOA.PES_Observacao as observacoes
      ,FISICA.FIS_NomePai as pai
      ,FISICA.FIS_NomeMae as mae
      ,FISICA.FIS_Sexo as sexo
      ,FISICA.Fis_EstadoCivil as est_civil
      ,FISICA.FIS_NomeConjuge as conjuge
      ,PESSOA.PES_LimiteCredito as limite_credito
      ,cast (PESSOA.PES_Dta_Cadastro as date) as cadastro
  FROM FACIL.dbo.PESSOA
  left join FACIL.dbo.FISICA on FISICA.PES_Codigo = PESSOA.PES_Codigo
  left join FACIL.dbo.JURIDICA on JURIDICA.PES_Codigo = PESSOA.PES_Codigo
  where PESSOA.PES_TipoCadastro = 'CLI' AND PESSOA.PES_Codigo > '0'