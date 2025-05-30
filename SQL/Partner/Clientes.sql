SELECT 
       CLIFOR.CCliFor as codigo
      ,CLIFOR.NCliFor as nome
      ,CLIFOR.Fant as fantasia
      ,CLIFOR.[End] as endereco
      ,CLIFOR.Bair as bairro
      ,CLIFOR.Cid as cidade
      ,CLIFOR.UF as uf
      ,CLIFOR.Cep as cep
      ,CLIFOR.Fone1 as telefone
      ,CLIFOR.Celu as celular
      ,CLIFOR.Fax as fax
      ,case when CLIFOR.Cpf = '' or CLIFOR.Cpf is null then CLIFOR.Cgc else CLIFOR.Cpf END AS CNPJ_CNPF
      ,case when CLIFOR.RG = '' or CLIFOR.RG is null then CLIFOR.IE else CLIFOR.RG END AS IE_RG
      ,cast (CLIFOR.DNasc as date) as nascimento
      ,CLIFOR.Civil as est_civil
      ,CLIFOR.NConj as conjuge
      ,CLIFOR.Pai as pai
      ,CLIFOR.Mae as mae
      --,cast (CLIFOR.DCad as date) as cadastro
      ,CLIFOR.Email as email
      ,CLIFOR.Obs as observacoes
      ,CLIFOR.Limite as limite_credito
  FROM SYSTEM1.dbo.CLIFOR
  where CLIFOR.Tipo = 'CLI'
