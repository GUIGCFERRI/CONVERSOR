SELECT
  p.Cod AS CODIGO,
  b.CodigoBarras AS BARRAS,
  p.Descricao AS DESCRICAO,
  u.sigla AS UND,
  NULL AS FORNECEDOR,
  e.EstoqueAtual AS Qtd,
  NULL AS QTD_IDEAL,
  p.PesoLiquido AS PESO,
  g.Descricao AS GRUPO,
  p.CodProdutoMarca AS FAMILIA,
  e.Custo AS Preco_Custo,
  e.CustoMedio AS CustoMedio,
  NULL AS MARGEM_LUCRO,
  pr.Preco AS Preco_Venda,
  icms.csosn AS ST,
  p.CodigoProdutoBalanca AS COD_FABRICANTE,
  p.Observacoes AS OBSERVACOES,
  CAST(e.DataUltimaAlteracao AS DATE) AS Alteracao_preco,
  p.NCM AS COD_NCM,
  p.CEST as Personal6,
  NULL AS ULTIMA_COMPRA,
  CASE WHEN p.Ativo = 1 THEN 'Ativo' ELSE 'Inativo' END AS situacao
FROM [DB1Clic].[dbo].[TAB_Produto] p
LEFT JOIN (
    SELECT CodProduto, CodigoBarras
    FROM (
        SELECT
            CodProduto,
            CodigoBarras,
            ROW_NUMBER() OVER (PARTITION BY CodProduto ORDER BY CodigoBarras) AS rn
        FROM [DB1Clic].[dbo].[TAB_ProdutoCodigoBarras]
    ) AS sub
    WHERE rn = 1
) b ON b.CodProduto = p.Cod
LEFT JOIN (
    SELECT e1.CodProduto, e1.EstoqueAtual, e1.Custo, e1.CustoMedio, e1.DataUltimaAlteracao
    FROM [DB1Clic].[dbo].[TAB_ProdutoEstoque] e1
    INNER JOIN (
        SELECT CodProduto, MAX(DataUltimaAlteracao) AS MaxData
        FROM [DB1Clic].[dbo].[TAB_ProdutoEstoque]
        GROUP BY CodProduto
    ) e2 ON e1.CodProduto = e2.CodProduto AND e1.DataUltimaAlteracao = e2.MaxData
) e ON e.CodProduto = p.Cod
LEFT JOIN [DB1Clic].[dbo].[TAB_ProdutoGrupo] g ON g.Cod = p.CodProdutoGrupo
LEFT JOIN (
    SELECT CodProduto, Preco
    FROM (
        SELECT
            CodProduto,
            Preco,
            ROW_NUMBER() OVER (PARTITION BY CodProduto ORDER BY DataUltimaAlteracao DESC, Preco DESC) AS rn
        FROM [DB1Clic].[dbo].[TAB_ProdutoPreco]
        WHERE CodProdutoPrecoTipo = 1
    ) sub
    WHERE rn = 1
) pr ON pr.CodProduto = p.Cod
LEFT JOIN [DB1Clic].[dbo].[TAB_TributacaoICMS] icms ON icms.cod = p.CodTributacaoICMS
LEFT JOIN [DB1Clic].[dbo].[TAB_UnidadeMedida] u ON u.cod = p.CodUnidadeMedidaVenda
