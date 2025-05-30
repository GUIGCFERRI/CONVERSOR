SELECT
    fatprodx.CODIGO,
    fatprodx.BARRAS,
    fatprodx.DESCRICAO,
    fatprodx.UND,
    fatprodx.COD_NCM,
    ESTCADXX.qtd

FROM fatprodx
LEFT JOIN ESTCADXX ON ESTCADXX.COD_PRO = FATPRODX.CODIGO