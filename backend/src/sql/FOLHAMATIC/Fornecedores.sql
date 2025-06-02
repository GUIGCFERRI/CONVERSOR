SELECT 
       cadfor.CODFOR AS CODIGO
      ,cadfor.FANT AS FANTASIA
      ,cadfor.RAZAO_SOC AS NOME
      ,cadfor.CONTATO AS CONTATO
      ,cadfor.LOGRADOURO AS ENDERECO
      ,cadfor.END_COMPL AS COMPLEMENTO
      ,cadfor.NUMERO AS NUMERO
      ,cadfor.BAIRRO AS BAIRRO
      ,cadfor.CIDADE AS CIDADE
      ,cadfor.UF AS UF
      ,cadfor.CEP AS CEP
     ,CONCAT (cadfor.DDD, ' ' ,cadfor.TELEF) AS TELEFONE
      ,CONCAT (cadfor.DDD, ' ' ,cadfor.FAX) AS FAX
      ,cadfor.EMAIL AS EMAIL
      ,case when cadfor.CPF = '' or cadfor.CPF is null then cadfor.CGC else cadfor.CPF END as CNPJ_CNPF
      ,case when cadfor.RG = '' or cadfor.RG is null then cadfor.INS_EST else cadfor.RG END as IE_RG
      ,cadfor.INS_MUNI AS IM
      ,cadfor.OBS AS OBSERVACOES
  FROM FAT00001.dbo.cadfor
