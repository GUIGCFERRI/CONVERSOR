SELECT 
       produto.descricao as descricao
      ,produto.codigoBarraProduto as barras
      ,produto.grupo as grupo
      ,produto.qtdMinima as qtd_ideal
      ,filialEstoque.qtddisp as qtd
      ,produto.unidade as und
      ,produto.pesoL as peso
      ,produto.compraPrc as preco_custo
      ,produto.vendaPrc as preco_venda
      ,produto.obs as observacoes
      ,produto.CST as st
      ,produto.NCM as cod_ncm
      ,produto.CEST as personal6
      ,produto.codigo as cod_fabricante
      ,cast (produto.ultDataCompra as date) as ultima_compra
      ,cast (produto.ultDataVenda as date) as ultima_venda
      ,cast (produto.dataAlteracao as date) as alteracao_preco
      ,cast (produto.dataInclusao as date) as data_cadastro
  FROM BDComercialJoseMarioF.dbo.produto
left join BDComercialJoseMarioF.dbo.filialEstoque on filialEstoque.prodcodigo = produto.codigo
