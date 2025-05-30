SELECT
       Produtos.C�digo as Codigo
      ,Produtos.Descri��o as Descricao
      ,Categorias.Descri��o as Grupo
      ,cast (Produtos.DataDaInclus�o as date) as Data_Cadastro
      ,Produtos.ProdutoGTIN
      ,Produtos.ProdutoNCM as Cod_ncm
      ,Produtos.ProdutoReferencia as Cod_Fabricante
      ,Produtos.UNA as UND
      ,Produtos.UNE as UND_Compra
      ,ProdutosPrecosDeVenda.Lucro as Margem_Lucro
      ,ProdutosPrecosDeVenda.Preco as Preco_Venda
      ,MIN (ProdutosPrecosDeCompra.Preco) as Preco_Custo
     -- ,Produtos.Observa��es as Observacoes
      ,Produtos.Peso as Peso
      ,Produtos.C�digoDeBarras
      ,ProdutosEstoques.QDE as QTD
      ,Produtos.classificacaofiscalid
      ,Produtos.ProdutoCEST as Personal6
  FROM PETISQUEIRA_DFE.dbo.Produtos
  left join PETISQUEIRA_DFE.dbo.ProdutosEstoques on ProdutosEstoques.ProdutoID = Produtos.C�digo
  left join PETISQUEIRA_DFE.dbo.ProdutosPrecosDeVenda on ProdutosPrecosDeVenda.ProdutoID = Produtos.C�digo
  left join PETISQUEIRA_DFE.dbo.ProdutosPrecosDeCompra on ProdutosPrecosDeCompra.ProdutoID = Produtos.C�digo
  left join PETISQUEIRA_DFE.dbo.Categorias on Categorias.C�digo = Produtos.Categoria
 GROUP BY
       Produtos.C�digo
      ,Produtos.Descri��o
      ,Categorias.Descri��o
      ,Produtos.DataDaInclus�o
      ,Produtos.ProdutoGTIN
      ,Produtos.ProdutoNCM
      ,Produtos.ProdutoReferencia
      ,Produtos.UNA
      ,Produtos.UNE
      ,ProdutosPrecosDeVenda.Lucro
      ,ProdutosPrecosDeVenda.Preco
      ,Produtos.Peso
      ,Produtos.C�digoDeBarras
      ,ProdutosEstoques.QDE
      ,Produtos.classificacaofiscalid
      ,Produtos.ProdutoCEST
