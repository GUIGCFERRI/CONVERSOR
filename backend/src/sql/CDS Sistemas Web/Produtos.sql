SELECT 
       produto.descricao as descricao
      ,produto.gtin as barras
      ,produto.unidade as und
      ,produto.grupo as grupo
      ,produto.pesoL as peso
      ,produto.qtdMinima as qtd_ideal
      ,filialEstoque.qtdest as qtd
      ,produto.compraPrc as preco_custo
      ,produto.custoMedio as custo_medio
      ,produto.lucroLiquido as margem_lucro
      ,produto.vendaPrc as preco_venda
      ,produto.CSOSN as st
      ,produto.obs as observacoes
      ,cast (produto.ultDataCompra as date) as ultima_compra
      ,cast (produto.ultDataVenda as date) as ultima_venda
      ,cast (produto.dataInclusao as date) as data_cadastro
      ,produto.codigo as cod_fabricante
      ,produto.NCM as cod_ncm
      ,produto.CEST as personal6
  FROM BDComercialOrganizacaoVeterinariaLj.dbo.produto
left join BDComercialOrganizacaoVeterinariaLj.dbo.filialEstoque on filialEstoque.prodCodigo = produto.codigo
where idFilial = '1'