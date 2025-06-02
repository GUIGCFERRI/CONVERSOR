SELECT 
PRODUTO.cod_produto AS CODIGO,
case PRODUTO.ativo when '1' then 'Ativo' else 'Inativo' end AS SITUACAO, 
PRODUTO.Discriminacao AS DESCRICAO,
PRODUTO.Quant_Compra AS QTD,
PRODUTO.Codigo_Produto AS BARRAS,
PRODUTO.Valor AS PRECO_VENDA,
PRODUTO.est_minimo AS QTD_IDEAL, 
PRODUTO.Unidade AS UND,
PRODUTO.preco_custo AS PRECO_CUSTO,
PRODUTO.Observacao AS OBSERVACOES,
PRODUTO.percentual_lucro AS MARGEM_LUCRO,
PRODUTO.Fator AS FAT_CONV,
PRODUTO.Peso_Bruto AS PESO,
PRODUTO.Percent_Comissao AS COMISSAO,
PRODUTO.Preco_Medio AS CUSTO_MEDIO,
PRODUTO.CEST AS PERSONAL6,
PRODUTO.CST_IPI_Entrada AS IPI_CODIGO,
PRODUTO.Aliquota_IPI_Ent AS ALIQ_IPI,
PRODUTO.CST_PIS_Ent AS PISE_CODIGO,
PRODUTO.Percent_PIS_Ent AS PISE_ALIQ_NOR,
PRODUTO.CST_Cofins_Ent AS COFINSE_CODIGO,
PRODUTO.Percent_Cofins_Ent AS COFINSE_ALIQ_NOR, 
PRODUTO.Grupo AS GRUPO,
PRODUTO.Familia  AS FAMILIA,
produto_outros.CST_Num AS ST,
produto_outros.NCM AS COD_NCM,
produto_outros.aliquota_ICMS AS ELO,
produto_outros.aliquota_IPI AS ALIQ_IPI_VENDA,
produto_outros.CST_IPI AS IPI_CODIGO_VENDA, 
produto_outros.percent_PIS AS PIS_ALIQ_NOR, 
produto_outros.CST_PIS AS PIS_CODIGO,
produto_outros.Percent_Cofins AS COFINS_ALIQ_NOR, 
produto_outros.CST_Cofins AS COFINS_CODIGO, 
cf.Nome AS FORNECEDOR
FROM PRODUTO
LEFT JOIN produto_outros ON PRODUTO.cod_produto = PRODUTO_OUTROS.Cod_Produto
left join produto_fornecedores pf on pf.Cod_Produto = PRODUTO.cod_produto
left join cadastrofornecedor cf on cf.COD_Fornecedor = pf.Cod_fornecedor  


