SELECT
    SP.SAC_PROD_COD as CODIGO,
    SP.SAC_PROD_DESCR as DESCRICAO,
    SP.SAC_PROD_UM AS UND,
    SG.sac_grup_descr AS GRUPO,
    SP.SAC_PROD_ULT_CUSTO as preco_custo,
    SV.sac_prec_venda AS PRECO_VENDA,
    SP.SAC_PROD_CUSTO_MEDIO as custo_medio,
    SP.SAC_PROD_REF as cod_fabricante,
    SP.SAC_PROD_MARCA as caracteristicas,
    SP.SAC_PROD_COD_BARRAS as barras,
    SP.SAC_PROD_OBSERV as observacoes,
    SP.SAC_PROD_NBM as cod_ncm,
    SP.SAC_PROD_CSOSN as st
    from sac_prod AS SP
 LEFT JOIN SAC_GRUP SG ON SP.SAC_PROD_GRUP = SG.SAC_GRUP_COD
 LEFT JOIN SAC_PREC SV ON SP.SAC_PROD_COD = SV.sac_prec_cod_prod