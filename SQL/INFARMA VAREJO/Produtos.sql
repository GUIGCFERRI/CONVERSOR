SELECT
       PRODU.Cod_Produt as codigo
      ,PRODU.Des_Comple as descricao
      ,PRODU.Dat_Implan as data_cadastro
      ,PRODU.Des_UniCom as und
      ,(select top 1 PRSLD.Qtd_SldAtu from VMD.dbo.PRSLD where PRSLD.Cod_Produt = PRODU.Cod_Produt order by dat_movime desc) as qtd
      ,(select top 1 HSPRC.Prc_Venda from VMD.dbo.HSPRC where HSPRC.Cod_Produt = PRODU.Cod_Produt order by dat_altera desc) as preco_venda
      ,(select top 1 HSPRC.Prc_CusLiq from VMD.dbo.HSPRC where HSPRC.Cod_Produt = PRODU.Cod_Produt order by dat_altera desc) as preco_custo
      ,(select top 1 HSPRC.Prc_CusMed from VMD.dbo.HSPRC where HSPRC.Cod_Produt = PRODU.Cod_Produt order by dat_altera desc) as custo_medio
      ,PRODU.Cod_Fabric as cod_fabricante
      ,GRPRC.Des_GrpPrc as grupo
      ,PRODU.Cod_EAN as barras
      ,substring (CLTRI.Des_ClaTri, 1 ,1) as st
      ,PRODU.NUM_REGMS as caracteristicas ----REGMS
      ,PRODU.NUM_REGMS as personal5 ----REGMS
      ,PRODU.Cod_Ncm as cod_ncm
      ,PRODU.Cod_CEST as personal6
      ,PRODU.Cod_PriAtv as personal4 ----PriAtv
  FROM VMD.dbo.PRODU
  left join VMD.dbo.GRPRC on GRPRC.Cod_GrpPrc = PRODU.Cod_GrpPrc
  left join VMD.dbo.CLTRI on VMD.dbo.CLTRI.Cod_ClaTri = PRODU.Cod_ClaTri