SELECT sdm205.`PRO_COD_PRO` as codigo,
sdm205.`PRO_DES_PRO` as descricao,
sdm205.`PRO_UNID_MED` as und,
sdm205.`PRO_COD_BAR` as barras,
sdm205.`PRO_QTD_PROD` as qtd,
sdm205.`PRO_COD_NCM` as cod_ncm,
sdm241.`PPR_VAL_PRO` as preco_venda,
sdm241.`PPR_PER_COM` as preco_custo
from sdm205
left join sdm241 on `sdm205`.`PRO_COD_PRO` = `sdm241`.`PPR_COD_PRO`
where sdm241.`PPR_COD_TAB` = 0
