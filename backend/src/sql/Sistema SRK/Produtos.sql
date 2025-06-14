SELECT 
       CDPROD AS CODIGO
      ,NOMPRO AS DESCRICAO
      ,UNIDAD AS UND
      ,PESLIQ AS PESO
      ,ESTMIN AS QTD_IDEAL
      ,CLASSI AS COD_NCM
      ,PCUSTO AS PRECO_CUSTO
      ,CTMEDI AS CUSTO_MEDIO
      ,CAST (LUCROS AS NUMERIC) AS MARGEM_LUCRO
      ,PVENDA AS PRECO_VENDA
      ,CAST (ULCOMP AS DATE) AS ULTIMA_COMPRA
      ,CAST (ULVEND AS DATE) AS ULTIMA_VENDA
      ,SUBTRI AS ST
      ,BARRAS AS BARRAS
      ,CDCEST AS PERSONAL6
      ,CAST (DATCAD AS DATE) AS DATA_CADASTRO
FROM EasySACDarlan.dbo.SAC441 ---PRODUTOS