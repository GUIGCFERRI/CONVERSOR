SELECT 
       Produtos.ProdCodi as codigo
      ,Produtos.ProdDesc as descricao
      ,Produtos.ProdCodB as cod_fabricante
      ,GrupoProdutos.grupnome as grupo
      ,UnidadesMedida.uniddesc as und
      ,UnidadesMedida.uniddesc as und_compra
      ,Produtos.ProdQtde as qtd
      ,Produtos.ProdEstMi as qtd_ideal
      ,min (Produtos_PrecoVenda.PrPPerc) as margem_lucro
      ,min (Produtos_PrecoVenda.PrPPrec) as preco_venda
      ,Produtos.ProdCST as st
      ,Produtos.ProdNCM as cod_ncm
      ,Tabela_CEST.Cest as personal6
      ,Produtos.ProdCodiForn as caracteristicas
      ,cast (Produtos.ProdUltiComp as date) as ultima_compra
      ,cast (Produtos.UltimaAlteracao as date) alteracao_preco
      ,cast (Produtos.ProdutoDataCadastro as date) as data_cadastro
  FROM PlayComercial.dbo.Produtos
  left join PlayComercial.dbo.Produtos_PrecoVenda on Produtos_PrecoVenda.ProdCodi = Produtos.ProdCodi
  left join PlayComercial.dbo.Tabela_CEST on Tabela_CEST.ncm = Produtos.ProdNCM
  left join PlayComercial.dbo.GrupoProdutos on GrupoProdutos.GrupCodi = Produtos.GrupCodi
  left join PlayComercial.dbo.UnidadesMedida on UnidadesMedida.UnidCodi = Produtos.UnidCodi
  group by 
         Produtos.ProdCodi
        ,Produtos.ProdDesc
        ,Produtos.ProdCodB
        ,GrupoProdutos.grupnome
        ,UnidadesMedida.uniddesc
        ,UnidadesMedida.uniddesc
        ,Produtos.ProdQtde
        ,Produtos.ProdEstMi
        ,Produtos.ProdCST
        ,Produtos.ProdNCM
        ,Tabela_CEST.Cest
        ,Produtos.ProdCodiForn
        ,Produtos.ProdUltiComp
        ,Produtos.UltimaAlteracao
        ,Produtos.ProdutoDataCadastro
