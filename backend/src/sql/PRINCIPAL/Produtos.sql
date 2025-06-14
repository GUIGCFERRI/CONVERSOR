SELECT
       SUBSTRING (PRODUTO.CODIGO,2,7) AS CODIGO
      ,PRODUTO.DESCRICAO AS DESCRICAO
      ,PRODUTO.CODIGO_ORIGEM AS COD_FABRICANTE
      ,PRODUTO.CODIGO_BARRAS1 AS BARRAS
      ,PRODUTO_GRUPO.DESCRICAO AS GRUPO
      ,MAX (PRODUTO_CUSTO.VALOR_UNITARIO_ENTRADA) AS PRECO_CUSTO
      ,MAX (PRODUTO_CUSTO.CUSTO_MEDIO) AS CUSTO_MEDIO
      ,PRODUTO.PRECO1 AS PRECO_VENDA
      ,PRODUTO.PESO_LIQUIDO AS PESO
      ,PRODUTO.OBSERVACAO AS OBSERVACOES
      ,PRODUTO.ESTOQUE_MINIMO AS QTD_IDEAL
      ,MAX (PRODUTO_ESTOQUE.QUANTIDADE) AS QTD
      ,UNIDADE_PADRAO.SIGLA AS UND
      ,MAX (SIT_TRIB_ICMS.CODIGO) AS ST
      ,NCM.NUMERO AS COD_NCM
      ,PRODUTO.ID_PRODUTO_GRUPO_TRIBUTARIO
      ,PRODUTO.CEST_CODIGO AS PERSONAL6
  FROM Principal.dbo.PRODUTO
LEFT JOIN Principal.dbo.PRODUTO_GRUPO ON PRODUTO_GRUPO.ID_PRODUTO_GRUPO = PRODUTO.ID_GRUPO
LEFT JOIN Principal.dbo.PRODUTO_UNIDADE_SAIDA ON PRODUTO_UNIDADE_SAIDA.ID_PRODUTO = PRODUTO.ID_UNID_PADRAO_SAIDA
LEFT JOIN Principal.dbo.UNIDADE_PADRAO ON UNIDADE_PADRAO.ID_UNIDADE_PADRAO = PRODUTO_UNIDADE_SAIDA.ID_UNIDADE_PADRAO
LEFT JOIN Principal.dbo.NCM ON NCM.ID_NCM = PRODUTO.ID_NCM 
LEFT JOIN Principal.dbo.PRODUTO_CUSTO ON PRODUTO_CUSTO.ID_PRODUTO = PRODUTO.ID_PRODUTO
LEFT JOIN Principal.dbo.PRODUTO_GRUPO_TRIBUTARIO ON PRODUTO_GRUPO_TRIBUTARIO.ID_PRODUTO_GRUPO_TRIBUTARIO = PRODUTO.ID_PRODUTO_GRUPO_TRIBUTARIO
LEFT JOIN Principal.dbo.PRODUTO_GRUPO_TRIBUTARIO_OPERACAO ON PRODUTO_GRUPO_TRIBUTARIO_OPERACAO.ID_PRODUTO_GRUPO_TRIBUTARIO = PRODUTO_GRUPO_TRIBUTARIO.ID_PRODUTO_GRUPO_TRIBUTARIO
LEFT JOIN Principal.dbo.SIT_TRIB_ICMS ON SIT_TRIB_ICMS.ID_SIT_TRIB_ICMS = PRODUTO_GRUPO_TRIBUTARIO_OPERACAO.ID_SIT_TRIB_ICMS
LEFT JOIN Principal.dbo.PRODUTO_ESTOQUE ON PRODUTO_ESTOQUE.ID_PRODUTO = PRODUTO.ID_PRODUTO
GROUP BY 
       PRODUTO.CODIGO
      ,PRODUTO.DESCRICAO
      ,PRODUTO.CODIGO_ORIGEM
      ,PRODUTO.CODIGO_BARRAS1
      ,PRODUTO_GRUPO.DESCRICAO
      ,PRODUTO.PRECO1
      ,PRODUTO.PESO_LIQUIDO
      ,PRODUTO.OBSERVACAO
      ,PRODUTO.ESTOQUE_MINIMO
      --,PRODUTO_ESTOQUE.QUANTIDADE
      ,UNIDADE_PADRAO.SIGLA
      --,SIT_TRIB_ICMS.CODIGO
      ,NCM.NUMERO
      ,PRODUTO.ID_PRODUTO_GRUPO_TRIBUTARIO
      ,PRODUTO.CEST_CODIGO




