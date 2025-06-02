SELECT 
       Produtos.PRODUTO as codigo
      ,Produtos.Descricao as descricao
      ,min (substring (ProdutoBarras.barras,2,15)) as barras
      ,Unidades.sigla as und
      ,Produtos.EstoqueRepMin as qtd_ideal
      ,Produtos.PesoLiquido as peso
      ,Produtos.CustoBruto as preco_custo
      ,Produtos.MargemLucroAVista as margem_lucro
      ,Produtos.PrecoVenda as preco_venda
      ,Produtos.PrecoAtacado as preco_atacado
      ,Produtos.CST_Saida as st
      ,Produtos.Observacao as observacoes
      ,Produtos.Referencia as cod_fabricante
      ,Produtos.CodigoMercosul as cod_ncm
      ,Produtos.CEST as personal6
      ,cast (Produtos.DataCadastro as date) as data_cadastro
      ,cast (Produtos.DataAltera as date) as alteracao_preco
      ,cast (Produtos.UltimaVenda as date) as ultima_venda
      ,cast (Produtos.UltimaCompra as date) as ultima_compra
  FROM CashSuper.dbo.Produtos
left join CashSuper.dbo.ProdutoBarras on ProdutoBarras.produto = Produtos.PRODUTO
left join CashSuper.dbo.Unidades on Unidades.id = produtos.embalagem
group by
       Produtos.PRODUTO
      ,Produtos.Descricao
      ,Unidades.sigla
      ,Produtos.EstoqueRepMin
      ,Produtos.PesoLiquido
      ,Produtos.CustoBruto
      ,Produtos.MargemLucroAVista
      ,Produtos.PrecoVenda
      ,Produtos.PrecoAtacado
      ,Produtos.CST_Saida
      ,Produtos.Observacao
      ,Produtos.Referencia
      ,Produtos.CodigoMercosul
      ,Produtos.CEST
      ,Produtos.DataCadastro
      ,Produtos.DataAltera
      ,Produtos.UltimaVenda
      ,Produtos.UltimaCompra
