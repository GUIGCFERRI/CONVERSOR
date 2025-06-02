SELECT
      CAD_Produto.Codigo as cod_fabricante
      ,CAD_Produto.DescricaoOficial as descricao
      ,CAD_Unidade.Unidade as und
     ,CAD_Unidade.Unidade as und_compra
      ,max (MovimentoEstoque.pesoliquido) as peso
      ,max (MovimentoEstoque.Quantidade) as qtd
      ,CAD_GrupoEstoque.DescricaoGrupoEstoque as grupo
      ,CAD_TabelaPreco.PrecoCusto as preco_custo
      ,CAD_TabelaPreco.MargemLucro as margem_lucro
      ,CAD_TabelaPreco.PrecoVenda as preco_venda
       ,max (substring (MovimentoEstoque.SituacaoTributaria, 2,3)) as st
      ,CAD_Produto.CodigoNCM as cod_ncm
      ,CAD_Produto.CodigoEAN as barras
      ,CAD_Produto.CEST as personal6
      ,cast (CAD_Produto.DataHoraInclusaoRegistro as date) as data_cadastro
  FROM BDSantoPao_PD.dbo.CAD_Produto
  left join BDSantoPao_PD.dbo.CAD_Unidade on CAD_Unidade.IDUnidade = CAD_Produto.IDUnidadeEntrada
  left join BDSantoPao_PD.dbo.CAD_GrupoEstoque on CAD_GrupoEstoque.IDGrupoEstoque = CAD_Produto.IDGrupoEstoque
  left join BDSantoPao_PD.dbo.MovimentoEstoque on MovimentoEstoque.IDProduto = CAD_Produto.IDProduto
  left join BDSantoPao_PD.dbo.CAD_TabelaPreco on CAD_TabelaPreco.IDProduto = CAD_Produto.IDProduto
group by 
	   CAD_Produto.Codigo
                  ,CAD_Produto.DescricaoOficial
                  ,CAD_Unidade.Unidade
	  ,CAD_GrupoEstoque.DescricaoGrupoEstoque
	  ,CAD_TabelaPreco.PrecoCusto
	  ,CAD_TabelaPreco.MargemLucro
                  ,CAD_TabelaPreco.PrecoVenda
                  ,CAD_Produto.CodigoNCM
                  ,CAD_Produto.CodigoEAN
                  ,CAD_Produto.CEST
                  ,CAD_Produto.DataHoraInclusaoRegistro
