SELECT
       CADFOR.FORNECEDOR AS CODIGO
      ,CADFOR.RAZAO_SOCIAL AS NOME
      ,CADFOR.FANTASIA AS FANTASIA
      ,case when CADFOR.INSCRICAO = '' or CADFOR.INSCRICAO is null then CADFOR.IDENTIDADE else CADFOR.INSCRICAO END AS IE_RG
      ,CADFOR.CNPJ AS CNPJ_CNPF
      ,CADFOR.ENDERECO AS ENDERECO
      ,CADFOR.ENDERECOCOMPL AS COMPLEMENTO
      ,CADFOR.ENDERECONUMERO AS NUMERO
      ,CADFOR.BAIRRO AS BAIRRO
      ,CADFOR.CIDADE AS CIDADE
      ,CADFOR.ESTADO AS UF
      ,CADFOR.CEP AS CEP
      ,CADFOR.FONE AS TELEFONE
      ,CADFOR.FAX AS FAX
      ,CADFOR.CONTATO AS CONTATO
      ,CADFOR.E_MAIL AS EMAIL 
  FROM Empresario.dbo.CADFOR
WHERE CADFOR.FORNECEDOR <> '999999'
