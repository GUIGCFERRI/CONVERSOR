SELECT 
       Produto.cdProduto AS CODIGO
      ,Produto.nmproduto AS DESCRICAO
      ,Produto.nrQtdreal AS QTD
      ,Produto.nrQtdminima AS QTD_IDEAL
      ,Produto.vlPreco AS PRECO_VENDA
      ,Produto.dsUnidade AS UND
      ,Produto.vlCompra AS PRECO_CUSTO
      ,Produto.dtCompra AS ULTIMA_COMPRA
      ,Produto.nrMargem AS MARGEM_LUCRO
      ,Produto.nrPeso AS PESO
      ,Produto.vlCustoMedio AS CUSTO_MEDIO
      ,Produto.dsReferencia AS CARACTERISTICAS
      ,GRUPO.nmgrupo AS GRUPO
      ,Pessoa.nmPessoa AS FORNECEDOR
      ,Produto.cdCodigoDIC AS COD_FABRICANTE
      ,Produto.dsMercosul AS COD_NCM
      ,CAST (Produto.dtAlteracao AS DATE) AS ALTERACAO_PRECO
      ,SUBSTRING (Produto.dsSituacaoTributaria, 2,4) AS ST
      ,SubGrupo.nmSubGrupo AS FAMILIA
      ,Produto.vlAtacado AS PRECO_ATACADO
      ,CAST (Produto.dtCadastro AS DATE) AS DATA_CADASTRO
      ,Produto.cEAN AS BARRAS
  FROM OticaPerfumariaSantaHelena.dbo.Produto
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Grupo ON Grupo.cdgrupo = PRODUTO.cdgrupo
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.SubGrupo ON SubGrupo.cdSubGrupo = PRODUTO.cdSubGrupo
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Pessoa ON Pessoa.cdPessoa = PRODUTO.cdPessoa
