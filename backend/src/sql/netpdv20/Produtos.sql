select tcadpro.`cod_pro` as cod_fabricante,
tcadpro.`descr_pro` as descricao,
`tgrupo`.`descr_grupo` as grupo,
tcadpro.`unidade` as und,
tcadpro.`vlr_custo` as preco_custo,
tcadpro.`vlr_venda` as preco_venda,
tcadpro.`cod_estoq` as barras,
tcadpro.`obs` as observacoes,
tcadpro.`ncm` as cod_ncm,
`tprofisc`.`cod_cest` as personal6,
`tprofisc`.`csosn`as st,
`tctestoq`.`qt_estoq` as qtd
from tcadpro
left join tgrupo on tcadpro.`cod_grupo`=`tgrupo`.`cod_grupo`
left join `tctestoq` on tcadpro.`cod_pro`=tctestoq.`cod_pro`
left join `tprofisc` on tcadpro.`cod_pro`=tprofisc.`cod_pro`





