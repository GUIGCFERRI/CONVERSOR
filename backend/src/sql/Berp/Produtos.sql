SELECT 
       TB_CADPRODU.PRO_CDPROD as codigo
      ,TB_CADGRUPO.GRU_NMGRUP as grupo
      ,TB_CADPRODU.PRO_NMPROD as descricao
      ,TB_CADPRODU.PRO_NMABRE as observacoes
      ,TB_CADPRODU.PRO_VLRVEN as preco_venda
      ,TB_CADPRODU.PRO_VLRCUS as preco_custo
      ,TB_CADPRODU.PRO_UNIDAD as und
      ,TB_CADPRODU.PRO_ESTMIN as qtd_ideal
      ,TB_CADPRODU.PRO_ESTATU as qtd
      ,TB_SUBGRPROD.SGP_DESCSGPR as familia
      ,TB_CADPRODU.PRO_CSTICMSB as st
      ,TB_CADPRODU.PRO_NCM as cod_ncm   
      ,TB_CADPRODU.PRO_CEST   as personal6 
      ,TB_CADPRODU.PRO_GTIN as barras
  FROM Berp.dbo.TB_CADPRODU
  left join Berp.dbo.TB_CADGRUPO on TB_CADGRUPO.GRU_CDGRUP = TB_CADPRODU.PRO_CDGRUP
  left join Berp.dbo.TB_SUBGRPROD on TB_SUBGRPROD.SGP_CDSGPR = TB_CADPRODU.PRO_CDSGRP
