SELECT
       Produtos.CODPRODUTO AS PERSONAL2
      ,Produtos.NOMEPRODUTO AS DESCRICAO
      ,Produtos.DSCPRODUTO AS CARACTERISTICAS
      ,GRUPOS.NOMEGRUPO AS GRUPO
      ,Produtos.CodFabr AS COD_FABRICANTE
      ,Produtos.CodProdutoFabr AS BARRAS
      ,Produtos.Unid AS UND
      ,SUM(ESTOQUE.SDOATUAL) AS QTD
      ,PrecoVenda1 AS PRECO_VENDA
      ,Produtos.CustoCompra AS CUSTO_COMPRA
      ,Produtos.CustoMedio AS CUSTO_MEDIO
      ,Produtos.MargemLucroBruto AS MARGEM_LUCRO
      ,Produtos.SitTributaria AS ST
      ,Produtos.PesoLiquido AS PESO
      ,Produtos.ComissaoProduto AS COMISSAO
      ,Produtos.CodNCM AS COD_NCM
      ,Produtos.CodCEST AS PERSONAL6
  FROM dbcronos.dbo.Produtos
  LEFT JOIN dbcronos.dbo.Grupos ON GRUPOS.IDGRUPO = PRODUTOS.IDPRODUTO
  LEFT JOIN dbcronos.dbo.Estoque ON ESTOQUE.IDPRODUTO = PRODUTOS.IDPRODUTO
  GROUP BY
   Produtos.IdProduto
  ,Produtos.CODPRODUTO
  ,Produtos.NOMEPRODUTO
  ,Produtos.DSCPRODUTO
  ,GRUPOS.NOMEGRUPO
  ,Produtos.CodFabr
  ,Produtos.CodProdutoFabr
  ,Produtos.Unid
  ,PrecoVenda1
  ,Produtos.CustoCompra
  ,Produtos.CustoMedio
  ,Produtos.MargemLucroBruto
  ,Produtos.SitTributaria
  ,Produtos.PesoLiquido
  ,Produtos.ComissaoProduto
  ,Produtos.CodNCM
  ,Produtos.CodCEST