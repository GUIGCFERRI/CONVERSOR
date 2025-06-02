SELECT 
       cadcli.CL_CODIGO AS CODIGO
      ,cadcli.CL_FANT AS FANTASIA
      ,cadcli.CL_RAZ_SOC AS NOME
      ,cadcli.CL_LOGRADOURO AS ENDERECO
      ,cadcli.CL_NUMERO AS NUMERO
      ,cadcli.CL_BAIR AS BAIRRO
      ,cadcli.CL_CID AS CIDADE
      ,cadcli.CL_UF AS UF
      ,cadcli.CL_CEP AS CEP
      ,case when cadcli.CL_CPF = '' or cadcli.CL_CPF is null then cadcli.CL_CGC else cadcli.CL_CPF END as CNPJ_CNPF
      ,case when cadcli.CL_RG = '' or cadcli.CL_RG is null then cadcli.CL_INS else cadcli.CL_RG END as IE_RG
      ,cadcli.CL_PAI AS PAI
      ,cadcli.CL_MAE AS MAE
      ,cadcli.CL_NASCTO AS NASCIMENTO
      ,cadcli.CL_INSM AS IM
      ,CONCAT (cadcli.CL_DDD, ' ' ,cadcli.CL_FONE_1) AS TELEFONE
      ,CONCAT (cadcli.CL_DDD, ' ' ,cadcli.CL_FONE_2) AS CELULAR
      ,CONCAT (cadcli.CL_DDD, ' ' ,cadcli.CL_FAX) AS FAX
      ,cadcli.CL_REPRES AS CONTATO
      ,cadcli.CL_OBS AS OBSERVACOES
      ,cadcli.CL_DTCAD AS CADASTRO
      ,cadcli.CL_EMAIL AS EMAIL
      ,cadcli.CL_LIMITE AS LIMITE_CREDITO
      ,cadcli.CL_PROFISSAO AS PROFISSAO
      ,cadcli.CL_CONJUGE AS CONJUGE
  FROM FAT00001.dbo.cadcli
