SELECT 
       Produto.idProduto as codigo
      ,Produto.descricaoProduto as descricao
      ,Produto.unidadeProduto as und
      ,Produto.codigoBarras as barras
      ,Produto.nomeMarca as caracteristicas
      ,Produto.fabricante as cod_fabricante
      ,Produto.NCMSH as cod_ncm
      ,Grupo.nomeGrupo as grupo
      ,GrupoSub.nomesub as familia
      ,Produto.peso as peso
      ,Produto.quantidadeEstoque as qtd
      ,Produto.estoqueMinimo as qtd_ideal
      ,Produto.vendaPrazo
      ,Produto.vendaVista as preco_venda
      ,Produto.dataUltimaVenda as ultima_venda
      ,Produto.dataUltimaCompra as ultima_compra
      ,Produto.observacao as observacoes
      ,Produto.custoMedio as custo_medio
      ,Produto.custoReposicao as preco_custo 
      ,Produto.dataCadastro as data_cadastro
      ,Produto.dataAlteracao as alteracao_preco
      ,substring (Produto.CSOSN,1, 3) as st
      ,Produto.CEST as personal6
  FROM BDGESTOR.dbo.Produto
left join BDGESTOR.dbo.Grupo on Grupo.idGrupo = BDGESTOR.dbo.Produto.idGrupo
left join BDGESTOR.dbo.GrupoSub on GrupoSub.idGrupoSub = Produto.idGruposub and GrupoSub.idGrupo = Produto.idGrupo
