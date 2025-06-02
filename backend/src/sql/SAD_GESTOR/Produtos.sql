Select sm_cd_es_produto.cod as codigo,
SM_CD_ES_PRODUTO.dsc as descricao,
SM_CD_ES_PRODUTO.ref as cod_fabricante,
cast (SM_CD_ES_PRODUTO.pd_data as date) as Data_Cadastro,
SM_CD_ES_GRUPO.dsc as grupo,
SM_CD_ES_PRODUTO.pd_unidade as und,
SM_CD_ES_PRODUTO.pd_cest as personal6,
SM_CD_ES_PRODUTO.pd_ncm as cod_ncm,
SM_CD_ES_PRODUTO.da_caracteristicas as caracteristica,
SM_CD_ES_PRODUTO_DNM.estoque as qtd,
SM_CD_ES_PRODUTO_DNM.custo as preco_custo,
SM_CD_ES_PRODUTO_DNM.preco_pdv as preco_venda,
SM_CD_MO_MOVIMENTADOR.pd_nome as fornecedor
from SM_CD_ES_PRODUTO
left join SM_CD_ES_GRUPO on SM_CD_ES_PRODUTO.pd_grupo = SM_CD_ES_GRUPO.cod
left join SM_CD_ES_PRODUTO_DNM on SM_CD_ES_PRODUTO.cod= SM_CD_ES_PRODUTO_DNM.cod
left join SM_CD_MO_MOVIMENTADOR on SM_CD_ES_PRODUTO_DNM.fornecedor =SM_CD_MO_MOVIMENTADOR.cod
