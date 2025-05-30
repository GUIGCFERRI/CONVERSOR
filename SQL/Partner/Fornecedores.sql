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
      ,CLIFOR.Email as email
      ,CLIFOR.Obs as observacoes
  FROM SYSTEM1.dbo.CLIFOR
  where CLIFOR.Tipo = 'FOR'
