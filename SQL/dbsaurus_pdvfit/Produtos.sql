SELECT 
       tbProdutoDados.pro_idProduto
      ,MAX (tbProdutoCodigos.pro_codProduto) AS BARRAS
      ,MIN (tbProdutoImpostos.pro_icms_cst) AS ST
      ,tbProdutoNcms.pro_codigo AS COD_NCM
      ,tbProdutoNcms.pro_cest AS PERSONAL6
      ,vwProdutoDados.pro_qSaldo as qtd
      ,tbProdutoDados.pro_descProduto AS DESCRICAO
      ,tbProdutoPrecos.pro_vPreco AS PRECO_VENDA
      ,tbProdutoDados.pro_descCategoria AS GRUPO
      ,tbProdutoDados.pro_descSubCategoria AS FAMILIA
      ,tbProdutoDados.pro_descMarca AS CARACTERISTICAS
      ,tbProdutoDados.pro_descMedida AS UND
  FROM dbsaurus_pdvfit.dbo.tbProdutoDados
  LEFT JOIN dbsaurus_pdvfit.dbo.tbProdutoImpostos ON tbProdutoImpostos.pro_idImposto = tbProdutoDados.pro_idImposto
  LEFT JOIN dbsaurus_pdvfit.dbo.tbProdutoNcms ON tbProdutoNcms.pro_idNcm = tbProdutoDados.pro_idNcm
  LEFT JOIN dbsaurus_pdvfit.dbo.tbProdutoPrecos ON tbProdutoPrecos.pro_idProduto = tbProdutoDados.pro_idProduto
  LEFT JOIN dbsaurus_pdvfit.dbo.tbProdutoCodigos ON tbProdutoCodigos.pro_idProduto = tbProdutoDados.pro_idProduto
  left join dbsaurus_pdvfit.dbo.vwProdutoDados on vwProdutoDados.pro_idProduto = tbProdutoDados.pro_idProduto
  GROUP BY 
       tbProdutoDados.pro_idProduto
      --,tbProdutoImpostos.pro_icms_cst
      ,tbProdutoNcms.pro_codigo
      ,tbProdutoNcms.pro_cest
      ,vwProdutoDados.pro_qSaldo
      ,tbProdutoDados.pro_descProduto
      ,tbProdutoPrecos.pro_vPreco
      ,tbProdutoDados.pro_descCategoria
      ,tbProdutoDados.pro_descSubCategoria
      ,tbProdutoDados.pro_descMarca
      ,tbProdutoDados.pro_descMedida
