SELECT
       CAD_Produto.DescricaoOficial AS CARACTERISTICAS
      ,CAD_Produto.DescricaoProduto AS DESCRICAO
      ,CAD_Produto.Codigo AS CODIGO
      ,CAD_Unidade.Unidade AS UND
      ,CAD_Produto.PesoUnidade AS PESO
      ,CAD_GrupoEstoque.DescricaoGrupoEstoque AS GRUPO
      ,CAD_Produto.CodigoNCM AS COD_NCM
      ,CAD_Produto.CodigoEAN AS BARRAS
      ,CAD_Produto.CEST AS COD_CEST
      ,CAD_Produto.DataHoraInclusaoRegistro AS DATA_CADASTRO
  FROM [BDANDRESSASTORE_PD].[dbo].[CAD_Produto]
  LEFT JOIN [BDANDRESSASTORE_PD].[dbo].[CAD_GrupoEstoque] ON CAD_GrupoEstoque.CodGrupoEstoque = [BDANDRESSASTORE_PD].[dbo].[CAD_Produto].IDGrupoEstoque
  LEFT JOIN [BDANDRESSASTORE_PD].[dbo].[CAD_Unidade] ON CAD_Unidade.IDUnidade = [BDANDRESSASTORE_PD].[dbo].[CAD_Produto].IDUnidadeEstoque
