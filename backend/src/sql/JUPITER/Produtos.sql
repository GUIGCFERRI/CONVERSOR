select
PRO_CAD.pro_cod as codigo,
PRO_CAD.pro_ref as cod_fabricante,
substring(PRO_CAD.pro_und from 1 for 3) as und,
pro_cad.pro_ean as barras,
ncm_cad.ncm_ncm as cod_ncm,
PRO_CAD.pro_ean as barras,
substring(PRO_CAD.pro_des from 1 for 40) as descricao,
PRO_CAD.pro_pve as preco_venda,
PRO_CAD.pro_pcp as preco_custo,
PRO_CAD.pro_pme as custo_medio,
EST_CAD.est_qtd as qtd,
SIT_CAD.sit_cst as st
from PRO_CAD
left join est_cad on  pro_cad.pro_cod = est_cad.est_cod
left join SIT_CAD on pro_cad.pro_sit = SIT_CAD.sit_cod
left join ncm_cad on ncm_cad.ncm_cod = PRO_CAD.pro_ncm
