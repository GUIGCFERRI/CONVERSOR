select 
produto.pr_codigo as codigo,
produto.PR_DESCRICAO as descricao,
produto.PR_PRECO as preco_venda,
produto.PR_CUSTO as preco_custo,
produto.PR_UMSIGLA as und,
produto.PR_CEST as PERSONAL6,
SITUACAOTRIBUTARIA.ST_CONOTA as st,
produto2.PR_CFCODIGO as cod_ncm,
produto3.PR_STICODIGO AS IPI_CODIGO_VENDA,
produto3.PR_STPCODIGO AS PIS_CODIGO,
produto3.PR_STCCODIGO AS COFINS_CODIGO,
produto3.PR_ALIQUOTAPIS AS PIS_ALIQ_NOR,
produto3.PR_ALIQUOTACOFINS AS COFINS_ALIQ_NOR,
produto3.PR_STICODIGO_E AS ALIQ_IPI,
produto3.PR_STPCODIGO_E AS PISE_CODIGO,
produto3.PR_STCCODIGO_E AS COFINSE_CODIGO,
produto3.PR_ALIQUOTAPIS_E AS PISE_ALIQ_NOR,
produto3.PR_ALIQUOTACOFINS_E AS COFINSE_ALIQ_NOR,
--estoque.ES_QUANTIDADE as qtd
MAX(barras.BR_BARRAS) as cod_fabricante
from Megasul_SQL.dbo.produto
left join Megasul_SQL.dbo.situacaotributaria on produto.PR_STCODIGO=SITUACAOTRIBUTARIA.ST_CODIGO
left join Megasul_SQL.dbo.produto2 on produto.PR_CODIGO=produto2.PR_PRCODIGO
LEFT JOIN Megasul_SQL.dbo.produto3 ON produto.PR_CODIGO=produto3.PR_PRCODIGO
left join Megasul_SQL.dbo.estoque on produto.PR_CODIGO=estoque.ES_PRCODIGO
left join Megasul_SQL.dbo.barras on produto.PR_CODIGO=barras.BR_PRCODIGO
GROUP BY 
    produto.pr_codigo,
    produto.PR_DESCRICAO,
    produto.PR_PRECO,
    produto.PR_CUSTO,
    produto.PR_UMSIGLA,
    produto.PR_CEST,
    SITUACAOTRIBUTARIA.ST_CONOTA,
    produto2.PR_CFCODIGO,
    produto3.PR_STICODIGO,
    produto3.PR_STPCODIGO,
    produto3.PR_STCCODIGO,
    produto3.PR_ALIQUOTAPIS,
    produto3.PR_ALIQUOTACOFINS,
    produto3.PR_STICODIGO_E,
    produto3.PR_STPCODIGO_E,
    produto3.PR_STCCODIGO_E,
    produto3.PR_ALIQUOTAPIS_E,
    produto3.PR_ALIQUOTACOFINS_E;