SELECT
    "Produtos"."ID" as codigo,
    "Produtos"."Nome" as descricao,
	"ProdutosGrupo"."Nome" as Grupo,
	"Parceiros"."Nome" as Fornecedor,
    "CSOSN"."Codigo" as st,
    "Produtos"."UnidadeMedidaVenda" as und,
    "Produtos"."IdNCM" as cod_ncm,
    "Produtos"."PrecoCusto" as preco_custo,
    "Produtos"."PrecoVenda" as preco_venda,
    "Produtos"."Codigo" as caracteristicas,
    "Produtos"."CodigoFornecedor" as cod_fabricante,
    "Produtos"."CEST" as personal6 
FROM "Produtos"
LEFT JOIN "ProdutosGrupo" ON "Produtos"."IdGrupo" = "ProdutosGrupo"."Codigo" 
LEFT JOIN "Parceiros" ON "Produtos"."IdFornecedor" = "Parceiros"."Codigo"
LEFT JOIN "Tributacao" ON "Produtos"."IdTributacao" = "Tributacao"."Codigo"
LEFT JOIN "CSOSN" ON "Tributacao"."IdCSOSN" = "CSOSN"."ID"