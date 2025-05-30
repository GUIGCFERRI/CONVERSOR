select
                       tei.id_estoque as codigo,
                       tei.id_identificador as caracteristicas,
                       T3.cod_barra as BARRAS,
                       T1.descricao as DESCRICAO,
                       T1.uni_medida as UND,
                       T2.descricao as GRUPO,
                       COALESCE(T3.peso, 0) as PESO,
                       COALESCE(T3.qtd_atual, 0) as QTD,
                       COALESCE(T3.qtd_minim, 0) as QTD_IDEAL,
                       COALESCE(T1.prc_custo, 0) as PRECO_CUSTO,
                       T1.margem_lb as MARGEM_LUCRO,
                       COALESCE(T1.prc_venda, 0) as PRECO_VENDA,
                       COALESCE(T1.prc_atacado, 0) as PRECO_atacado,
                       COALESCE(substring(T3.cst from 1 for 1), 0) as OST,
                       COALESCE(''||SUBSTRING(TRIM(T3.cst) FROM 2 FOR 2),  00) as ST,
                       T3.cf as CF,
                       COALESCE(T3.ipi, 0) as ALIQ_IPI_VENDA,
                       substring(COALESCE(T1.cst_pis, '')from 1 for 2) as PIS_CODIGO,
                       COALESCE(T1.pis, 0) as PIS_ALIQ_NOR,
                       substring(COALESCE(T1.cst_cofins, '') from 1 for 2) as COFINS_CODIGO,
                       COALESCE(T1.cofins, 0) as COFINS_ALIQ_NOR,
                       T1.ult_venda as ULTIMA_VENDA,
                       T1.dt_cadast as DATA_CADASTRO,
                       T3.cod_ncm as COD_NCM,
                       T3.ippt as IPPT,
                       T3.cod_cest as PERSONAL6,
                       t3.referencia as cod_fabricante,
                       substring(t1.observacao from 1 for 1000) as observacoes,
                       case when t1.status = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
                       from tb_estoque T1
                       inner join tb_est_identificador tei on t1.id_estoque = tei.id_estoque
                       left join tb_est_grupo T2 on T1.id_grupo = T2.id_grupo
                       left join tb_est_produto T3 on tei.Id_identificador = T3.id_identificador
