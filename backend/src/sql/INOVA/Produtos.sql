SELECT
    PROD.produtocodigo AS CODIGO,
    PROD.produtocodigobarra AS BARRAS,
    PROD.produtodescricao AS DESCRICAO,
    PROD.produtovalorcompra AS PRECO_CUSTO,
    PROD.produtovalorvenda AS PRECO_VENDA,
    PROD.produtoqtdestoque AS QTD,
    PROD.produtounidademedida AS UND,
    CAT.categoriacodigo AS GRUPO,
    PROD.produtolucroporcento AS MARGEM_LUCRO,
    PROD.produtoncm AS COD_NCM,
    PROD.produtodescricaodetalhada AS CARACTERISTICAS,
    PROD.produtocofins AS COFINSE_ALIQ_NOR,
    PROD.produtopis AS PISE_ALIQ_NOR,
    PROD.produtocson AS ST, 
    PROD.produtopiscst AS PIS_CODIGO,
    PROD.produtoconfiscst AS COFINS_CODIGO,
    PROD.produtocest AS PERSONAL6
	FROM PRODUTOS AS PROD
	LEFT JOIN CATEGORIAS CAT ON PROD.PRODUTOCATEGORIAID = CAT.CATEGORIAID