SELECT
       Fornec.CodFor as codigo
      ,Fornec.Fornec as fantasia
      ,Fornec.Razao as nome
      ,Fornec.Endereco as endereco
      ,Fornec.Numero as numero
      ,Fornec.ComplementoEndereco as complemento
      ,Fornec.Bairro as bairro
      ,Fornec.Cidade as cidade
      ,Fornec.Estado as uf
      ,Fornec.Cep as cep
      ,Fornec.Tel as telefone
      ,Fornec.Tel2 as celular
      ,case when Fornec.CPF = '' or Fornec.CPF is null then Fornec.CGC else Fornec.CPF END AS CNPJ_CNPF
      ,case when Fornec.RG = '' or Fornec.RG is null then Fornec.IE else Fornec.RG END AS IE_RG
      ,Fornec.IM as im
      ,Fornec.EMail as email
      ,Fornec.Observacao as observacoes
  FROM IMPORT.dbo.Fornec
