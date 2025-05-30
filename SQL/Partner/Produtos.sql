SELECT
       PRODUTO.CProd as codigo
      ,PRODUTO.NProd as descricao
      ,Grupo.nGru as grupo
      ,SubGrupo.NSub as familia
      ,PRODUTO.Un as und
      ,PRODUTO.Ref as cod_fabricante
      ,PRODUTO.Marca as caracteristicas
      ,PRODUTO.Fisico as qtd
      ,PRODUTO.Fabrica as custo_medio
      ,PRODUTO.cmc as preco_custo
      ,PRODUTO.ALucro as margem_lucro
      ,PRODUTO.Venda as preco_venda
      ,PRODUTO.Obs as observacoes
      ,PRODUTO.CBarra as barras
      ,PRODUTO.Peso as peso
      ,cast (PRODUTO.DCad as date) as data_cadastro
      ,cast (PRODUTO.DUReaj as date) as alteracao_preco
      ,cast (PRODUTO.DUCom as date) as ultima_compra
      ,cast (PRODUTO.DUVen as date) as ultima_venda
      ,CLIFOR.NCliFor as fornecedor
      ,substring (PRODUTO.CST, 1, 1) as ost
      ,substring (PRODUTO.CST, 2, 4) as st
      ,PRODUTO.NCM as cod_ncm,
       max (NCM_CEST.CEST) as personal6
  FROM SYSTEM1.dbo.PRODUTO
  left join SYSTEM1.dbo.Grupo on Grupo.CGru = PRODUTO.CGru
  left join SYSTEM1.dbo.SubGrupo on SubGrupo.CSub = PRODUTO.CSub
  left join SYSTEM1.dbo.CLIFOR on clifor.CCliFor = PRODUTO.CCliFor
  left join SYSTEM1.dbo.NCM_CEST on NCM_CEST.NCM = PRODUTO.NCM
  group by 
       PRODUTO.CProd
      ,PRODUTO.NProd
      ,Grupo.nGru 
      ,SubGrupo.NSub
      ,PRODUTO.Un
      ,PRODUTO.Ref
      ,PRODUTO.Marca
      ,PRODUTO.Fisico
      ,PRODUTO.Fabrica
      ,PRODUTO.CMC
      ,PRODUTO.ALucro
      ,PRODUTO.Venda
      ,PRODUTO.Obs
      ,PRODUTO.CBarra
      ,PRODUTO.Peso
      ,PRODUTO.DCad
      ,PRODUTO.DUReaj
      ,PRODUTO.DUCom
      ,PRODUTO.DUVen
      ,CLIFOR.NCliFor
      ,PRODUTO.CST
      ,PRODUTO.NCM