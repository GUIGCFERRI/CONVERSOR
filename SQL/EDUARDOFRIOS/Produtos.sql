SELECT 
       Produtos.Codigo as codigo
      ,Produtos.Descricao as descricao
      ,UNIVENDAS.descricao as und
      ,UNIVENDAS.descricao as und_compra
      ,CBARRAS.cbarra as barras
      ,GRUPOS.grupo as grupo
      ,ESTOQUE.ESTOQUER as qtd
      ,Tributo.Num_CST as st
      ,ESTOQUE.PMEDIO as custo_medio
      ,ESTOQUE.CUSTOR as preco_custo
      ,ESTOQUE.MARGEN as margem_lucro
      ,ESTOQUE.VENDAR as preco_venda
      ,ESTOQUE.PESO as peso
      ,ESTOQUE.ClFiscal as cod_ncm
      ,TB_NCM.CEST as personal6
      ,cast (Produtos.Cadastro as date) as data_cadastro
  FROM EDUARDOFRIOS.dbo.Produtos
  left join EDUARDOFRIOS.dbo.GRUPOS on GRUPOS.codigo = Produtos.E_GRUPO
  left join EDUARDOFRIOS.dbo.ESTOQUE on ESTOQUE.e_produto = Produtos.Codigo
  left join EDUARDOFRIOS.dbo.CBARRAS on CBARRAS.e_produto = ESTOQUE.e_produto
  left join EDUARDOFRIOS.dbo.UNIVENDAS on UNIVENDAS.CODIGO = E_Unidade
  left join EDUARDOFRIOS.dbo.Tributo ON Tributo.CodigoF = ESTOQUE.E_IMPOSTO
  left join EDUARDOFRIOS.dbo.TB_NCM on TB_NCM.NC_NCM = ESTOQUE.ClFiscal
