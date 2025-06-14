SELECT
  ITEM_CARDAPIO.CD_ITEMCARDAPIO AS CODIGO,
  CLASSE_ITEMCARDAPIO.DS_CLASSEITEMCARDAPIO AS GRUPO,
  ITEM_CARDAPIO.DS_ITEMCARDAPIO AS DESCRICAO,
  ITEM_CARDAPIO.CODIGO_BARRAS AS BARRAS,
  UNIDADE.ABREVIACAO AS UND,
  --SUBSTRING (SITUACAO_TRIBUTARIA.DS_SITUACAOTRIBUTARIA FROM 1 FOR 1) AS ST,
  SITUACAO_TRIBUTARIA.codigo_na_nf AS ST,
  ITEM_CARDAPIOXEMPRESA.VALOR_VENDA AS PRECO_VENDA,
  ITEM_CARDAPIOXEMPRESA.VALOR_CUSTO_MEDIO AS CUSTO_MEDIO,
  ITEM_CARDAPIOXEMPRESA.VALOR_COMPRA AS PRECO_CUSTO,
  ITEM_CARDAPIO.QTD_ESTOQUE_MINIMO AS QTD_IDEAL,
  UNIDADE.ABREVIACAO AS UND_COMPRA,
  ITEM_CARDAPIO.NCM AS COD_NCM,
  ITEM_CARDAPIO.CEST AS PERSONAL6
FROM ITEM_CARDAPIO
LEFT JOIN ITEM_CARDAPIOXEMPRESA ON ITEM_CARDAPIOXEMPRESA.CD_ITEMCARDAPIO = ITEM_CARDAPIO.CD_ITEMCARDAPIO
LEFT JOIN UNIDADE ON UNIDADE.CD_UNIDADE = ITEM_CARDAPIO.CD_UNIDADE
LEFT JOIN SITUACAO_TRIBUTARIA ON SITUACAO_TRIBUTARIA.CD_SITUACAOTRIBUTARIA = ITEM_CARDAPIOXEMPRESA.CD_SITUACAOTRIBUTARIA
LEFT JOIN CLASSE_ITEMCARDAPIO ON CLASSE_ITEMCARDAPIO.CD_CLASSEITEMCARDAPIO = ITEM_CARDAPIO.CD_CLASSEITEMCARDAPIO
