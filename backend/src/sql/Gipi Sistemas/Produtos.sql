SELECT
PRODUTO.COD_PRO AS CODIGO,
PRODUTO.VALOR_PRO AS PRECO_VENDA,
custos.preco_custo AS PRECO_CUSTO,
PRODUTO.UNIDADE_ENTRADA_PRO AS UND_COMPRA,
PRODUTO.UNIDADE_SAIDA_PRO AS UND,
MIN (codigo_barra.cod_bar) AS BARRAS,
PRODUTO.NOME_PRO AS DESCRICAO,
PRODUTO.CSOSN_CONT_EST AS ST,
PRODUTO.COD_NCM,
PRODUTO.CODIGO_CEST AS PERSONAL6,
ESTOQUE.ESTOQUE AS QTD,
CAST (produtos_alterados.data_hora AS DATE) AS ALTERACAO_PRECO
FROM PRODUTO
LEFT JOIN ESTOQUE ON PRODUTO.COD_PRO = ESTOQUE.COD_PRO
left join codigo_barra on codigo_barra.cod_pro = produto.cod_pro
left join custos on custos.cod_pro = produto.cod_pro
left join produtos_alterados on produtos_alterados.cod_pro = produto.cod_pro
GROUP BY 1,2,3,4,5,7,8,9,10,11,12
