SELECT 
       substring (cast(Tbl_Produto.nCdProduto as varchar(200)), 4,9) AS CODIGO
      ,Tbl_Produto.sCdBarraProduto AS BARRAS
      ,Tbl_Produto.sCdReferenciaProduto AS COD_FABRICANTE
      ,Tbl_Produto.sNmProduto AS DESCRICAO
      ,CAST (Tbl_Produto.tDtCadastroProduto AS DATE) AS DATA_CADASTRO
      ,CAST (Tbl_Produto.tDtAlteracaoProduto AS DATE) AS ALTERACAO_PRECO
      ,Tbl_Produto.dVlCustoProduto AS PRECO_CUSTO
      ,Tbl_Produto.dVlCustoMedioProduto AS CUSTO_MEDIO
      ,Tbl_Produto.dPcMargemProduto AS MARGEM_LUCRO
      ,Tbl_Produto.dVlVendaProduto AS PRECO_VENDA
      ,Tbl_Produto.dQtEstoqueProduto AS QTD
      ,substring (Tbl_Imposto.sNmImposto, 9,10) AS ST
      ,Tbl_Produto.dVlPesoUnitarioProduto AS PESO
      ,Tbl_Pessoa.sNmPessoa AS FORNECEDOR
      ,Tbl_CategoriaSub.sNmCategoriaSub AS FAMILIA
      ,Tbl_Categoria.sNmCategoria AS GRUPO
      ,Tbl_Unidade.sSgUnidade AS UND
      ,Tbl_ProdutoNcm.sNrProdutoNcm AS COD_NCM
      ,Tbl_ProdutoCest.sNrProdutoCest AS PERSONAL6
  FROM GENE.dbo.Tbl_Produto
  LEFT JOIN GENE.dbo.Tbl_ProdutoCest ON Tbl_ProdutoCest.nCdProdutoCest = Tbl_Produto.nCdProdutoCest
  LEFT JOIN GENE.dbo.Tbl_ProdutoNcm ON Tbl_ProdutoNcm.nCdProdutoNcm = Tbl_Produto.nCdProdutoNcm
  LEFT JOIN GENE.dbo.Tbl_Categoria ON Tbl_Categoria.nCdCategoria = Tbl_Produto.nCdCategoriaProduto
  LEFT JOIN GENE.dbo.Tbl_CategoriaSub ON Tbl_CategoriaSub.nCdCategoriaSub = Tbl_Produto.nCdCategoriaSubProduto
  LEFT JOIN GENE.dbo.Tbl_Pessoa ON Tbl_Pessoa.nCdPessoa = Tbl_Produto.nCdFornecedorProduto
  LEFT JOIN GENE.dbo.Tbl_Unidade ON Tbl_Unidade.nCdUnidade = Tbl_Produto.nCdUnidadeProduto
  LEFT JOIN GENE.dbo.Tbl_Imposto ON Tbl_Imposto.nCdImposto = Tbl_Produto.nCdImposto