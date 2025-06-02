SELECT 
       LJ_Produtos.IdReferencia AS COD_FABRICANTE
      ,LJ_Produtos.CodProduto AS CODIGO
      ,LJ_Produtos.Descricao AS DESCRICAO
      ,MIN (LJ_ReferBar.CodBarra) AS BARRAS
      ,IvGrupo.Descricao AS GRUPO
      ,CAST (LJ_Produtos.DataCadastro AS DATE) AS DATA_CADASTRO
      ,CAST (LJ_Produtos.DataAlteracao AS DATE) AS ALTERACAO_PRECO
      ,CAST (LJ_Produtos.DataUltCompra AS DATE) AS ULTIMA_COMPRA	
      ,CAST (LJ_Produtos.DataUltVenda AS DATE) AS ULTIMA_VENDA
      ,LJ_Produtos.PrcMedio AS CUSTO_MEDIO
      ,LJ_Produtos.PercMargem AS MARGEM_LUCRO
      ,Lj_ReferPrc.PrecoVenda AS PRECO_VENDA
      ,LJ_Produtos.UndVenda AS UND
      ,FornecedoreS.NomeFornecedor AS FORNECEDOR
      ,LJ_Produtos.UndCompra AS UND_COMPRA
      ,LJ_Produtos.NCM AS COD_NCM
      ,LJ_Produtos.CSOSN AS ST
      ,LJ_Produtos.Cest AS PERSONAL6
      ,IvSubGrupo.Descricao AS FAMILIA
  FROM EverMark.dbo.LJ_Produtos
  LEFT JOIN EverMark.dbo.IvGrupo ON IvGrupo.IdGrupo = LJ_Produtos.IdGrupo
  LEFT JOIN EverMark.dbo.IvSubGrupo ON EverMark.dbo.IvSubGrupo.IdSubGrupo = LJ_Produtos.IdSubGrupo
  LEFT JOIN EverMark.dbo.Lj_ReferPrc ON Lj_ReferPrc.IdReferencia = LJ_Produtos.IdReferencia
  LEFT JOIN EverMark.dbo.Fornecedores ON Fornecedores.IdFornecedor = LJ_Produtos.IdFornecedor
  LEFT JOIN EverMark.dbo.LJ_ReferBar ON LJ_ReferBar.IdReferencia = LJ_Produtos.IdReferencia
  GROUP BY
       LJ_Produtos.IdReferencia
      ,LJ_Produtos.CodProduto
      ,LJ_Produtos.Descricao
      ,IvGrupo.Descricao
      ,CAST (LJ_Produtos.DataCadastro AS DATE)
      ,CAST (LJ_Produtos.DataAlteracao AS DATE)
      ,CAST (LJ_Produtos.DataUltCompra AS DATE)
      ,CAST (LJ_Produtos.DataUltVenda AS DATE)
      ,LJ_Produtos.PrcMedio
      ,LJ_Produtos.PercMargem
      ,Lj_ReferPrc.PrecoVenda
      ,LJ_Produtos.UndVenda
      ,FornecedoreS.NomeFornecedor
      ,LJ_Produtos.UndCompra
      ,LJ_Produtos.NCM
      ,LJ_Produtos.CSOSN
      ,LJ_Produtos.Cest
      ,IvSubGrupo.Descricao