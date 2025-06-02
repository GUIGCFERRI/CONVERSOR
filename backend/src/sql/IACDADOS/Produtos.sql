select
MIN (produto.cd_produto) as codigo,
produto.nm_produto as descricao,
produto.cd_original as caracteristicas,
gruprod.nm_gruprod as grupo,
SUBGRUPROD.NM_SUBGRUPROD AS FAMILIA,
produto.un_medida as und,
substring (TRIBUTACAO_GRUPO.NM_TRIBUTACAO_GRUPO from 1 for 1) AS ST,
MIN (CUSTCOMP.custo_medio_nomi) AS PRECO_CUSTO,
TABELA_PRECO_PRODUTO.PRECO_VENDA AS PRECO_VENDA,
TABELA_PRECO_PRODUTO.PRECO_VENDA_MIN AS PRECO_ATACADO,
produto.local_estocagem as Personal2,
produto.cd_produto as Personal3,
produto.obs as observacoes,
produto.qt_estoque as qtd,
produto.dt_atz as data_cadastro,
PRODUTO_CLASS_FISCAL.NM_CLASS_FISCAL AS COD_NCM,
CEST.CEST AS PERSONAL6,
produto.cd_fabricante as cod_fabricante
--MIN (produto.cd_produto) as cod_fabricante
from produto
left join CUSTCOMP ON PRODUTO.CD_PRODUTO = CUSTCOMP.cd_produto
left join gruprod on produto.cd_gruprod = gruprod.cd_gruprod
LEFT JOIN SUBGRUPROD ON SUBGRUPROD.CD_SUBGRUPROD = PRODUTO.CD_SUBGRUPROD
LEFT JOIN PRODUTO_CLASS_FISCAL ON PRODUTO_CLASS_FISCAL.CD_CLASS_FISCAL = PRODUTO.CD_CLASS_FISCAL
LEFT JOIN CEST ON CEST.CD_CEST = PRODUTO_CLASS_FISCAL.CD_CEST
LEFT JOIN TRIBUTACAO_GRUPO ON TRIBUTACAO_GRUPO.ID_TRIBUTACAO_GRUPO = PRODUTO.ID_TRIBUTACAO_GRUPO
LEFT JOIN TABELA_PRECO_PRODUTO ON TABELA_PRECO_PRODUTO.CD_PRODUTO = PRODUTO.CD_PRODUTO
WHERE TABELA_PRECO_PRODUTO.CD_TABELA_PRECO = '1'
GROUP BY 2,3,4,5,6,7,9,10,11,12,13,14,15,16,17,18
