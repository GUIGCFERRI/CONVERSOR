SELECT
    PRODUTO.I_CONTADOR AS CODIGO,
    CAST (PRODUTO.D_CASDADTR AS DATE) AS DATA_CADASTRO,
    PRODUTO.A_NPRODUTO AS DESCRICAO,
    PRODUTO.A_CODBARRA AS BARRAS,
    PRODUTO.N_PESOLIQ AS PESO,
    PRODUTO.A_UNIDADEP AS UND,
    PRODUTO.A_UNIDADEP AS UND_COMPRA,
    PRODUTO.N_MINPRODU AS QTD_IDEAL,
    ESTOQUE.N_QUANTATU AS QTD,
    PRODUTO.C_PRODCUST AS PRECO_CUSTO,
    PRODUTO.N_MARGEMLU AS MARGEM_LUCRO,
    PRODUTO.C_PRECOVAR AS PRECO_VENDA,
    PRODUTO.C_PRECOATA AS PRECO_ATACADO,
    PRODUTO.A_CODFORNE AS COD_FABRICANTE,
    PRODUTO.A_NCM AS COD_NCM,
    PRODUTO.A_CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN ESTOQUE ON ESTOQUE.I_IDPRODUT = PRODUTO.I_CONTADOR