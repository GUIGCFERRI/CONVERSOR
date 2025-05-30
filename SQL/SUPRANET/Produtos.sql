SELECT
       PR.Cod_Produto AS CODIGO
      ,PR.Num_Produto AS COD_FABRICANTE
      ,PR.Nom_Produto AS DESCRICAO
      ,PR.Num_Referencia
      ,PG.Des_Grupo_Produto AS GRUPO
      ,M.Nom_Produto_Marca AS CARACTERISTICAS
      ,PR.Pes_Liquido AS PESO
      ,PR.Num_GTIN AS BARRAS
      ,E.Vlr_Custo AS PRECO_CUSTO
      ,E.Vlr_Venda AS PRECO_VENDA
      ,E.Qtd_Minima AS QTD_IDEAL
      ,E.Qtd_Estoque AS QTD
      ,E.Dta_Ultima_Compra AS ULTIMA_COMPRA
      ,E.Dta_Ultima_Venda AS ULTIMA_VENDA
      ,CAST (E.Dth_Inclusao_Alteracao AS DATE)  AS ALTERACAO_PRECO
      ,SUBSTRING (TI.Nom_Tributacao_ICMS, 1,1) AS ST
      ,PR.Des_Observacao AS OBSERVACOES
      ,PR.Num_NCM AS COD_NCM
      ,PR.Num_FCI AS COD_FCI
      ,PR.Num_CEST AS PERSONAL6
  FROM db_TopaTudo.dbo.tb_Produto AS PR
  LEFT JOIN db_TopaTudo.dbo.tb_Produto_Grupo PG ON PR.Cod_Grupo_Produto = PG.Cod_Grupo_Produto
  LEFT JOIN db_TopaTudo.dbo.tb_Produto_Marca M ON PR.Cod_Produto_Marca = M.Cod_Produto_Marca
  LEFT JOIN db_TopaTudo.dbo.tb_Tributacao_ICMS TI ON PR.Cod_Tributacao_ICMS = TI.Cod_Tributacao_ICMS
  LEFT JOIN db_TopaTudo.dbo.tb_Estoque E ON PR.Cod_Produto = E.Cod_Produto
  WHERE E.Cod_Deposito = '1'