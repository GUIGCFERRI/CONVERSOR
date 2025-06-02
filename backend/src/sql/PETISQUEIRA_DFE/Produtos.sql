SELECT
       Produtos.Código as Codigo
      ,Produtos.Descrição as Descricao
      ,Categorias.Descrição as Grupo
      ,cast (Produtos.DataDaInclusão as date) as Data_Cadastro
      ,Produtos.ProdutoGTIN
      ,Produtos.ProdutoNCM as Cod_ncm
      ,Produtos.ProdutoReferencia as Cod_Fabricante
      ,Produtos.UNA as UND
      ,Produtos.UNE as UND_Compra
      ,ProdutosPrecosDeVenda.Lucro as Margem_Lucro
      ,ProdutosPrecosDeVenda.Preco as Preco_Venda
      ,MIN (ProdutosPrecosDeCompra.Preco) as Preco_Custo
     -- ,Produtos.Observações as Observacoes
      ,Produtos.Peso as Peso
      ,Produtos.CódigoDeBarras
      ,ProdutosEstoques.QDE as QTD
      ,Produtos.classificacaofiscalid
      ,Produtos.ProdutoCEST as Personal6
  FROM PETISQUEIRA_DFE.dbo.Produtos
  left join PETISQUEIRA_DFE.dbo.ProdutosEstoques on ProdutosEstoques.ProdutoID = Produtos.Código
  left join PETISQUEIRA_DFE.dbo.ProdutosPrecosDeVenda on ProdutosPrecosDeVenda.ProdutoID = Produtos.Código
  left join PETISQUEIRA_DFE.dbo.ProdutosPrecosDeCompra on ProdutosPrecosDeCompra.ProdutoID = Produtos.Código
  left join PETISQUEIRA_DFE.dbo.Categorias on Categorias.Código = Produtos.Categoria
 GROUP BY
       Produtos.Código
      ,Produtos.Descrição
      ,Categorias.Descrição
      ,Produtos.DataDaInclusão
      ,Produtos.ProdutoGTIN
      ,Produtos.ProdutoNCM
      ,Produtos.ProdutoReferencia
      ,Produtos.UNA
      ,Produtos.UNE
      ,ProdutosPrecosDeVenda.Lucro
      ,ProdutosPrecosDeVenda.Preco
      ,Produtos.Peso
      ,Produtos.CódigoDeBarras
      ,ProdutosEstoques.QDE
      ,Produtos.classificacaofiscalid
      ,Produtos.ProdutoCEST
