SELECT
PRODUTOS.ID_PRODUTO AS PERSONA1,
--PRODUTOS.ID_PRODUTO AS CARACTERISTICAS,
PRODUTOS.GTIN AS BARRAS,
PRODUTOS.PRODUTO AS DESCRICAO,
PRODUTOS.REFERENCIA AS COD_FABRICANTE,
PRODUTOS.ESTOQUE AS QTD,
PRODUTOS.VALOR_VENDA AS PRECO_VENDA,
PRODUTOS.CUSTO AS PRECO_CUSTO,
PRODUTOS.NCM AS COD_NCM,
PRODUTOS.CEST AS PERSONAL6,
PRODUTOS.aplicacao as OBSERVACOES,
PRODUTOS.valor_atacado AS PRECO_ATACADO,
--PRODUTOS.OBS AS OBSERVACOES,
PRODUTOS.DT_CADASTRO AS DATA_CADASTRO,
PRODUTOS.UNIDADE_COMECIAL AS UND,
PRODUTOS.CSOSN AS ST,
PRODUTOS.CST_PISCOFINS_SAIDA AS PIS_CODIGO,
CASE WHEN PRODUTOS.ALIQ_PIS_SAIDA>0 THEN 100 END AS PIS_BASE_NOR,
PRODUTOS.ALIQ_PIS_SAIDA AS PIS_ALIQ_NOR,
PRODUTOS.CST_PISCOFINS_SAIDA AS COFINS_CODIGO,
CASE WHEN PRODUTOS.ALIQ_COFINS_SAIDA>0 THEN 100 END AS COFINS_BASE_NOR,
PRODUTOS.ALIQ_COFINS_SAIDA AS COFINS_ALIQ_NOR,
PRODUTOS_GRUPO.GRUPO,
case when PRODUTOS.STATUS = 'ATIVO' then 'Ativo' else 'Inativo' end as SITUACAO
FROM PRODUTOS
LEFT JOIN PRODUTOS_GRUPO ON PRODUTOS.GRUPO=PRODUTOS_GRUPO.ID
