select est_pro.`IDProduto` as codigo,
`est_pro_gru`.`Nome` as grupo,
`est_pro`.nome as descricao,
est_pro.`CodBarras` as barras,
est_pro.`CodFabricante` as cod_fabricante,
est_pro.`UnidadeS` as und,
est_pro.`UnidadeE` as und_compra,
`est_pro`.`ClassFiscal` as cod_ncm,
est_pro.`CodCEST` as personal6,
`est_pro_pre_tab`.`ValorVenda` as preco_venda,
est_est.`EstAtual` as qtd
from est_pro
left join est_pro_gru on est_pro.`IDGrupo`=`est_pro_gru`.`IDGrupo`
left join `est_pro_pre_tab` on (est_pro.`IDProduto`=`est_pro_pre_tab`.`IDProduto`) and(`est_pro_pre_tab`.`IDTabPreco`=6)
left join est_est on est_pro.`IDProduto`=est_est.`IDProduto`
