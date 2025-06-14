SELECT
       CADMER.RECNUM AS CARACTERISTICAS
      ,CADMER.MERCADORIA AS CODIGO
      ,CADMER.NOME_M AS DESCRICAO
      ,BARRAS.CODIGO AS BARRAS
     -- ,CADMER.SQUANT AS QTD
      ,CUSTOS.PRECO AS PRECO_VENDA
      ,CADNCM.TIPOCREDITO AS ST 
      ,CUSTOS.DATAALT AS ALTERACAO_PRECO
      ,CUSTOS.EST_MIN AS QTD_IDEAL
      ,MARGEM_PERC AS MARGEM_LUCRO
      ,CADMER.UR AS UND
      ,CADMER.UC AS UND_COMPRA
      ,CADMER.FATOR AS FAT_CONV
      ,CADEST.DESCRICAO AS GRUPO
      ,CADMER.PESO AS PESO
      ,CADMER.NCM AS COD_NCM
      ,CADMER.dataCadastro AS DATA_CADASTRO
      ,CADMER.cd_fabricante AS COD_FABRICANTE
      ,MAX(CADNCM.CEST) AS PERSONAL6
  FROM STAR.dbo.CADMER
  LEFT JOIN STAR.dbo.CADEST ON CADEST.ESTRUTURA = CADMER.ESTRUTURA
  LEFT JOIN STAR.dbo.BARRAS ON BARRAS.MERCADORIA = CADMER.MERCADORIA
  LEFT JOIN STAR.dbo.CADNCM ON CADNCM.NCM = CADMER.NCM
  LEFT JOIN STAR.dbo.CUSTOS ON CUSTOS.MERCADORIA = CADMER.MERCADORIA WHERE FILIAL = '1' 
  GROUP BY
  CADMER.RECNUM
      ,CADMER.MERCADORIA
      ,CADMER.NOME_M
      ,BARRAS.CODIGO
      ,CADMER.SQUANT
      ,CUSTOS.PRECO
      ,CADNCM.TIPOCREDITO
      ,CUSTOS.DATAALT
      ,CUSTOS.EST_MIN
      ,MARGEM_PERC
      ,CADMER.UR
      ,CADMER.UC 
      ,CADMER.FATOR 
      ,CADEST.DESCRICAO 
      ,CADMER.PESO
      ,CADMER.NCM 
      ,CADMER.dataCadastro 
      ,CADMER.cd_fabricante 
