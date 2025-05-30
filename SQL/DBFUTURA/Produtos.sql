SELECT
    sig_insumo.sig_ins_id AS CODIGO,
    sig_insumo.sig_ins_descricao AS DESCRICAO,
    sig_insumo.sig_uni_id AS UND,
    CAST (sig_insumo.sig_ins_dt_cad AS DATE) AS DATA_CADASTRO,
    sig_insumo.sig_ins_barra AS BARRAS,
    sig_insumo_complemento.sig_ins_categoria1 AS GRUPO,
    sig_insumo_complemento.sig_ins_categoria2 AS FAMILIA,
    sig_insumototais.sig_ins_custo_medio AS CUSTO_MEDIO,
    sig_insumo.sig_ins_referencia AS COD_FABRICANTE,
    sig_insumo.sig_uni_entrada_id AS UDD_COMPRA,
    sig_insumo.sig_ins_qut_minima AS QTD_IDEAL,
    sig_insumo.sig_ncm_id AS COD_NCM,
    sig_insumo.sig_ins_peso_l AS PESO,
    sig_origeminsumo.sig_ori_id AS OST,
    sig_insumo.sig_ins_custo AS PRECO_CUSTO,
    sig_insumo.sig_ins_observacao AS OBSERVACOES
FROM sig_insumo
LEFT JOIN sig_origeminsumo ON sig_origeminsumo.sig_ori_id = sig_insumo.sig_ori_id
LEFT JOIN sig_insumo_complemento ON sig_insumo_complemento.sig_ins_id = sig_insumo.sig_ins_id
LEFT JOIN sig_insumototais ON sig_insumototais.sig_ins_id = sig_insumo.sig_ins_id
WHERE sig_insumo.sig_emp_id = '1'
