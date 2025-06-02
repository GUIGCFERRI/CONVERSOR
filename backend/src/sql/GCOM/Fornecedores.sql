SELECT 
       MC_Fornece.Codigo as codigo
      ,MC_Fornece.Nome as nome
      ,MC_Fornece.Fantasia as fantasia
      ,case when MC_Fornece.Insc_Estadual = '' or MC_Fornece.Insc_Estadual is null then MC_Fornece.RG else MC_Fornece.Insc_Estadual END AS IE_RG
      ,MC_Fornece.CPF_CGC as cnpj_cnpf
      ,MC_Fornece.Fone1 as telefone
      ,MC_Fornece.Fone2 as celular
      ,MC_Fornece.Fax as fax
      ,MC_Fornece.Endereco as endereco
      ,MC_Fornece.Bairro as bairro
      ,MC_Fornece.Cidade as cidade
      ,MC_Fornece.UF as uf
      ,MC_Fornece.CEP as cep
      ,MC_Fornece.Obs1 as observacoes
      ,MC_Fornece.Email as email
      ,MC_Fornece.Numero as numero
  FROM GCOM.dbo.MC_Fornece