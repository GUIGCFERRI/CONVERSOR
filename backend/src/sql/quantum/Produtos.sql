SELECT 
  p.COD_INTERNO as CODIGO
, p.COD_REFERENCIA as COD_FABRICANTE
, p.COD_EAN1 as BARRAS
, p.DESCRICAO_COMPLETA as DESCRICAO
, p.emb_venda as UND
, p.emb_compra as UND_COMPRA
, p.QTD_EMB_COMPRA as FAT_CONV
, p.DATA_CADASTRO
, p.ICMS_VENDA as ELO
, p.Preco_Venda
, p.Margem as MARGEM_LUCRO
, p.novo_custo as PRECO_CUSTO
, p.estoque_minimo as QTD_IDEAL
, p.Data_ultima_venda as ULTIMA_VENDA
, p.ippt
, p.cst as ST  -- AJUSTAR CONFORME REGIME TRIBUTÁRIO
-- , p.csosn as ST -- AJUSTAR CONFORME REGIME TRIBUTÁRIO
, p.ncm as COD_NCM
, p.complemento as OBSERVACOES
, p.cest as PERSONAL6
, es.Saldo_estoque as QTD
, g.Desc_Grupo as GRUPO
, sg.Desc_sub_grupo as FAMILIA
, f.NOME_RAZAOSOCIAL as FORNECEDOR
FROM produtos p
left join estoque_saldo es on es.codigo_Interno_Produto  = p.COD_INTERNO
left join departamentos g on g.Cod_Grupo  = p.COD_GRUPO 
left join departamentos sg on sg.Cod_sub_grupo  =  p.COD_SUB_GRUPO
left join fornecedores f on f.codigo = p.idfornecedor
