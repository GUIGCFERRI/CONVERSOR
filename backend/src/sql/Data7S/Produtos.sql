SELECT
       Produto.CodProduto as codigo
      ,Produto.Nome as descricao
      ,Produto.CodigoBarras1 as barras 
      ,Produto.CodUnidadeMedida as und
      ,Produto.NumeroReferencia as caracteristicas
      ,Produto.EstoqueMinimo as qtd_ideal
      ,saldoestoque.SaldoAtual as qtd
      ,GrupoProduto.Nome as grupo
      ,Produto.PesoLiquido as peso
      ,Produto.CustoMedio as custo_medio
      ,Produto.MargemLucro as margem_lucro
      ,Produto.PrecoVenda as preco_venda
      ,Produto.CodigoFabricante as cod_fabricante
      ,Produto.NCM as cod_ncm  
      ,Produto.CEST as presonal6
      ,Produto.Observacao as observacoes
      ,Produto.DataUltimaCompra as ultima_compra  
      ,Produto.DataUltimaVenda as ultima_venda 
      ,cast (Produto.DataCadastro as date) as data_cadastro 
      ,Produto.CodigoANP as cod_anp
  FROM Data_Se7e_FRANGO.dbo.Produto
left join Data_Se7e_FRANGO.dbo.SaldoEstoque on SaldoEstoque.codproduto = produto.CodProduto
left join Data_Se7e_FRANGO.dbo.GrupoProduto on GrupoProduto.CodGrupoProduto = Produto.CodGrupoProduto
