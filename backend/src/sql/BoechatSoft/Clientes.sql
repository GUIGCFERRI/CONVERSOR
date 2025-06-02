SELECT ARQ005.codcli AS CODIGO
      ,ARQ005.datcad AS CADASTRO
      ,ARQ005.nomcli AS NOME
      ,ARQ005.cgccli AS CNPJ_CNPF
      ,ARQ005.inscli AS IE_RG
      ,ARQ005.endcli AS ENDERECO
      ,ARQ005.comcli AS COMPLEMENTO
      ,ARQ005.baicli AS BAIRRO
      ,ARQ005.cepcli AS CEP
      ,ARQ004.nomcid AS CIDADE
      ,ARQ005.foacli AS FONE
      ,ARQ005.celcli AS CELULAR
FROM BoechatSoft.dbo.arq005
LEFT JOIN BoechatSoft.dbo.arq004 ON BoechatSoft.dbo.arq005.CIDCLI = BoechatSoft.dbo.arq004.codcid