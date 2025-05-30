SELECT
  produtos.CODPRO as codigo,
  produtos.NOMPRO as descricao,
  produtos.C_BARRAS as barras,
  produtos.COD_FABRI as cod_fabricante,
  produtos.UNDPRO as und,
  produtos.QTDPRO as qtd,
  produtos.CUSTO as preco_custo,
  produtos.VENPRO as preco_venda,
  produtos.LUCRO as margem_lucro,
  produtos.VPROMO as preco_atacado,
  produtos.COD_ICMS as st,
  grupos.nomgru as grupo,
  sub_grupos.nome as familia,
  produtos.DT_ULT_COM as ultima_compra,
  produtos.OBS_01 as observacoes,
  produtos.CLA_FISC as cod_ncm, 
  produtos.CODIGO_CEST as personal6
FROM produtos
left join grupos on grupos.codgru = produtos.GRUPRO
left join sub_grupos on sub_grupos.codigo = produtos.CODSGRU