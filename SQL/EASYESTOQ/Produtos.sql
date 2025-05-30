SELECT
    PRODUTO.idproduto AS CODIGO,
    PRODUTO.nome AS DESCRICAO,
    PRODUTO.codbarra AS BARRAS,
    PRODUTO.prccusto AS PRECO_CUSTO,
    PRODUTO.prcvenda AS PRECO_VENDA,
    PRODUTO.prcpromocao AS PRECO_ATACADO,
    unidadeproduto.sigla as und_compra,
    unidadeproduto.sigla as und,
    PESSOA.RAZAOSOCIAL AS FORNECEDOR,
    PRODUTO.obs AS OBSERVACOES,
    PRODUTO.dtcadastro AS DATA_CADASTRO,
    PRODUTO.qtdestq AS QTD,
    PRODUTO.spedtipodoitem AS ST,
    PRODUTO.ncm AS COD_NCM,
    PRODUTO.refprod AS COD_FABRICANTE,
    PRODUTO.comissao AS COMISSAO,
    PRODUTO.qtdestqminimo AS QTD_IDEAL,
    PRODUTO.peso AS PESO,
    PRODUTO.mglucro AS MARGEM_LUCRO,
    PRODUTO.codcest AS PERSONAL6
FROM PRODUTO
LEFT JOIN PESSOA ON PESSOA.IDPESSOA = PRODUTO.IDFORNECEDOR
LEFT JOIN unidadeproduto ON unidadeproduto.IDUNIDADE = PRODUTO.idembcompra
where PRODUTO.nome is not null
