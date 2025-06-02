SELECT 
       produto.Codproduto AS CODIGO
      ,produto.CodBarra AS BARRAS
      ,produto.Nome AS DESCRICAO
      ,produto.Unidade AS UND
      ,produto.Peso AS PESO
      ,produto.PrecoCusto AS PRECO_CUSTO
      ,produto.Mlv AS MARGEM_LUCRO
      ,produto.PrecoVenda AS PRECO_VENDA
      ,grupo.Nome AS GRUPO
      ,subgrupo.Nome AS FAMILIA
      ,EstoqueAuxiliar.QuantidadeEstoque AS QTD
      ,produto.Estoqueminimo AS QTD_IDEAL
      ,fornecedor.nome AS FORNECEDOR
      ,CAST (produto.Data_cad AS DATE) AS DATA_CADASTRO
      ,CAST (produto.Data_mod AS DATE) AS ALTERACAO_PRECO
      ,produto.Obs AS OBSERVACOES
      ,produto.SituacaoTrib AS ST
      ,produto.NCM AS COD_NCM
      ,produto.Cest AS PERSONAL6
      ,CAST (produto.DataUltimaCompra AS DATE) AS ULTIMA_COMPRA
  FROM Comercio.dbo.produto
  LEFT JOIN Comercio.dbo.subgrupo on subgrupo.CodSubGrupo = produto.Codsubgrupo
  LEFT JOIN Comercio.dbo.grupo on grupo.CodGrupo = subgrupo.Codgrupo
  LEFT JOIN Comercio.dbo.fornecedor on fornecedor.codfornecedor = produto.Codfornecedor
  LEFT JOIN Comercio.dbo.EstoqueAuxiliar ON EstoqueAuxiliar.codigoproduto = produto.Codproduto