SELECT T15_001.codpro as codigo,
t15_001.descrpro as descricao,
t15_001.codbarrapro as barras,
t16_001.descrgru  as grupo,
t17_001.descrsub as familia,
t15_001.codfabrpro as cod_fabricante,
t15_001.unidadepro as und,
t15_001.sittribpro as st,
t15_001.classipipro as cod_ncm,
t15_001.dtcadastropro as data_cadastro,
t15_001.obspro as observacoes,
t15_001.codcestpro as personal6,
t24_001.pcvenda1est as preco_venda,
t24_001.pccustoest as preco_custo,
t24_001.pccustomdest as custo_medio,
t24_001.sdpafest as qtd
FROM t15_001
left join t16_001 on t15_001.grupopro=t16_001.codgru
left join t17_001 on t15_001.subgrupopro=t17_001.codsub
left join t24_001 on t15_001.codpro=t24_001.codproest








