SELECT
       Produtos.Codigo as Cod_Fabricante
      ,Produtos.Nome as Descricao
      ,Produtos.Unidade as UND
      ,Variacoes.Nome as caracteristicas
      ,Produtos.CodBarra as Barras
      ,Grupos.nome as Grupo
      ,PrecoAtual.preco as preco_venda
      ,Produtos.inclusao as Data_Cadastro
      ,Produtos.alteracao as alteracao_PRECO
      ,Produtos.Fabricante as fornecedor
      ,Produtos.Estoque as Qts
      ,Produtos.NCM as Cod_ncm
      ,Produtos.CEST as Personal6
  FROM basesys.dbo.Produtos
  left join basesys.dbo.grupos on grupos.codigo = produtos.codigo
  inner join basesys.dbo.precoatual on precoatual.produto = produtos.codigo
  left join basesys.dbo.variacoes on variacoes.codigo = precoatual.variacao






