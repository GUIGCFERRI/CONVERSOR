select
    "Produtos"."ID" as codigo,
    "Produtos"."Codigo" as personal1,
    "Produtos"."Nome" as descricao,
    "ProdutosCodigoBarras"."CodigoBarras" as barras,
    "Produtos"."UnidadeMedidaVenda" as und,
    "Produtos"."UnidadeMedidaCompra" as und_compra,
    "Produtos"."SaldoMinimo" as qtd_ideal,
    "Produtos"."PesoUnitLiquido" as peso,
    "Parceiros"."Nome" as fornecedor,
    "ProdutosGrupo"."Nome" as grupo,
    "Produtos"."PrecoCusto" as preco_custo,
    "Produtos"."MargemVenda" as margem_lucro,
    "Produtos"."PrecoVenda" as preco_venda,
    "CSOSN"."Codigo" as st,
    "Produtos"."Observacao" as observacoes,
    "Produtos"."CodigoFornecedor" as cod_fabricante,
    "Produtos"."DataCriacao" as data_cadastro,
    "Produtos"."DataAlteracao" as alteracao_preco,
    "Produtos"."IdNCM" as cod_ncm,
    "Produtos"."CEST" as personal6,
    case when "Produtos"."Ativo" = 'true' then 'Ativo' else 'Inativo' end as situacao
from "Produtos"
left join "ProdutosGrupo" on "ProdutosGrupo"."Codigo" = "Produtos"."IdGrupo"
left join "Tributacao" on "Tributacao"."Codigo" = "Produtos"."IdTributacao"
left join "CSOSN" ON "CSOSN"."ID" = "Tributacao"."IdCSOSN"
left join "Parceiros" on "Parceiros"."Codigo" = "Produtos"."IdFornecedor"
left join "ProdutosCodigoBarras" on "ProdutosCodigoBarras"."Codigo" = "Produtos"."Codigo"
