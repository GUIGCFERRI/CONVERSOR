SELECT
  P.chave as codigo,
  P.Codigo as barras,
  P.Descricao as descricao,
  G.DESCRICAO AS GRUPO,
  cast(P.Inclusao as date) as data_cadastro,
  P.Unid_med as und,
  P.Est_Minimo as qtd_ideal,
  E.Disp_It AS QTD,
  P.Custo_Medio as custo_medio,
  P.Custo_Atual as preco_custo,
  P.Preco_Venda as preco_venda,
  P.Preco_Atacado as preco_atacado,
  substring(GI.Situacao_Tributaria from 1 for 1) as ost,
  substring(GI.Situacao_Tributaria from 2 for 3) as st,
  cast(P.Ult_Ven as date) as ultima_venda,
  cast(P.Ult_Compra as date) as ultima_compra,
  cast(P.Alt_Reposicao as date) as alteracao_preco,
  P.peso as peso,
  P.Obs as observacoes,
  P.classificacao_fiscal as cod_ncm,
  P.fornecedor,
  case when P.inativo = '0' then 'Ativo' else 'Inativo' end as SITUACAO,
  P.inativo,
  P.cest as personal6
 FROM PRODUTOS AS P
LEFT JOIN GRUPOS G ON P.Grupo1 = G.CHAVE
LEFT JOIN ESTOQUES E ON P.chave = E.CHAVE
LEFT JOIN GRUPOS_ICMS GI ON P.G_Icms = GI.CHAVE
