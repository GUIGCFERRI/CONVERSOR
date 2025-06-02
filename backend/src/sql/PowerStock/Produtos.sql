select `produtos`.`codPro` AS COD_FABRICANTE,
`grupos`.`descricao` as grupo,
produtos.`descricao`,
produtos.`unidade` as und,
produtos.`clasFiscal` as cod_ncm,
produtos.`codFabricante` as cod_fabricante,
produtos.`dataCadastro` as data_cadastro,
produtos.`dataUltimaAlteracao` as alteracao_preco,
estoque.`quantidade` as qtd,
estoque.`precoAVista` as preco_venda,
estoque.`estMinimo` as qtd_ideal,
estoque.`precoAtacado` as preco_atacado,
estoque.`precoCusto` as preco_custo,
estoque.`codigoBarrasFornecedor` as barras,
case when `aliquotas_ecf`.`aliquota` like '1%' or `aliquotas_ecf`.`aliquota` is null then '102'
when `aliquotas_ecf`.`aliquota`='ST' then '500' end as st,
produtos.`codigoCEST` as personal6
from produtos
left join grupos on produtos.`codGrupo`=grupos.`codigo`
left join estoque on `produtos`.`codPro`=estoque.`codProd`
left join `aliquotas_ecf` on produtos.`aliqECF`=`aliquotas_ecf`.`codigo`


