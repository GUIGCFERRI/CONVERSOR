SELECT ARQ008.codpro AS CODIGO
      ,ESTOQUE_MOV.DISPONIVEL AS QTD
      ,ARQ008.nompro AS DESCRICAO
      ,ARQ008.barpro AS BARRAS
      ,ARQ008.unipro AS UND
      ,ARQ008.cuspro AS PRECO_CUSTO
      ,ARQ008.venpro AS PRECO_VENDA
      ,ARQ008.regncm AS COD_NCM
      ,ARQ008.sittri AS ST
  FROM BoechatSoft.dbo.arq008
LEFT JOIN BoechatSoft.dbo.ESTOQUE_MOV ON BoechatSoft.dbo.arq008.CODPRO = BoechatSoft.dbo.ESTOQUE_MOV.PRODUTO_ID