SELECT
  TAB_ITEM.COD_ITEM AS CODIGO,
  TAB_ITEM.COD_BARRA AS BARRAS,
  TAB_UNIDADE.SGL_UNIDADE AS UND,
  TAB_ITEM.COD_NCM AS COD_NCM,
  TAB_PESSOA.NOM_PESSOA AS FORNECEDOR,
  TAB_ITEM.COD_REFERENCIA AS CARACTERISTICAS,
  TAB_SUBGRUPO.DES_SUBGRUPO AS FAMILIA,
  TAB_ITEM.DES_ITEM AS DESCRICAO,
  TAB_SALDO_PRO.TSP_SALDO AS QTD,
  TAB_ITEM.COD_FABRICA AS COD_FABRICANTE,
  TAB_ITEM.QTD_ESTOQUE_MINIMO AS QTD_IDEAL,
  TAB_ITEM.VAL_CUSTO_UNITARIO AS PRECO_CUSTO,
  TAB_ITEM.VAL_CUSTO_MEDIO AS CUSTO_MEDIO,
  TAB_ITEM.VAL_PRECO_VENDA_D AS PRECO_VENDA,
  TAB_ITEM.PER_MARGEM_A AS MARGEM_LUCRO,
  TAB_GRUPO.DES_GRUPO_ITEM AS GRUPO,
  TAB_ITEM.PESO_LIQUIDO AS PESO,
  TAB_ITEM.COD_CEST AS PERSONAL6
FROM TAB_ITEM
LEFT JOIN TAB_UNIDADE ON TAB_UNIDADE.COD_UNIDADE = TAB_ITEM.COD_UNIDADE
LEFT JOIN TAB_PESSOA ON TAB_PESSOA.COD_PESSOA = TAB_ITEM.COD_FORNECEDOR
LEFT JOIN TAB_GRUPO ON TAB_GRUPO.COD_GRUPO = TAB_ITEM.COD_GRUPO
LEFT JOIN TAB_SUBGRUPO ON TAB_SUBGRUPO.COD_SUBGRUPO = TAB_ITEM.COD_SUBGRUPO
LEFT JOIN TAB_SALDO_PRO ON TAB_SALDO_PRO.TSP_COD_PRO = TAB_ITEM.COD_ITEM