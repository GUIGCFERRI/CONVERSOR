SELECT 
       Produto.IDProduto as Cod_Fabricante
      ,Produto.Nome as Descricao
      ,Produto.CódigoBarras as Barras
      ,Estoque.Quantidade as QTD
      ,UnidadeMedida.Descricao as UND
      ,Grupo.Descricao as Grupo
      ,ClassificacaoFiscal.NCM as Cod_NCM
      ,Fornecedor.RazaoSocial as Fornecedor
      ,Produto.CEST as Personal6
  FROM PetShopControl.dbo.Produto
  LEFT JOIN PetShopControl.dbo.Estoque on Estoque.IDProduto = Produto.IDProduto
  LEFT JOIN PetShopControl.dbo.Fornecedor on Fornecedor.IDFornecedor = Produto.IDFornecedor
  LEFT JOIN PetShopControl.dbo.Grupo on Grupo.IDGrupo = Produto.IDGrupo
  LEFT JOIN PetShopControl.dbo.UnidadeMedida on UnidadeMedida.IDUnidadeMedida = Produto.IDUnidadeMedida
  LEFT JOIN PetShopControl.dbo.ClassificacaoFiscal on ClassificacaoFiscal.IDClassificacaoFiscal = Produto.IDClassificacaoFiscal
