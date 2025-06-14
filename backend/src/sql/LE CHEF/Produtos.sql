SELECT
    ESTOQUE.CODIGO AS CODIGO,
    ESTOQUE.COD_BARRA AS BARRAS,
    ESTOQUE.DESCRICAO AS DESCRICAO,
    ESTOQUE.UNI_MEDIDA AS UND,
    ESTOQUE.PESO AS PESO,
    ESTOQUE.QTD_ATUAL AS QTD,
    ESTOQUE.QTD_MINIM AS QTD_IDEAL,
    GRUPO.NOME_GRUPO AS GRUPO,
    CADASTRO.RAZAO AS FORNECEDOR,
    ESTOQUE.PRC_CUSTO AS PRECO_CUSTO,
    ESTOQUE.CUSTOMEDIO AS CUSTO_MEDIO,
    ESTOQUE.MARGEM_LB AS MARGEM_LUCRO,
    ESTOQUE.PRC_VENDA AS PRECO_VENDA,
    ESTOQUE.prc_atacado AS PRECO_ATACADO,
    ESTOQUE.CSOSN AS ST,
    ESTOQUE.CODIGO AS COD_FABRICANTE,
    ESTOQUE.OBS AS OBSERVACOES,
    ESTOQUE.ULT_VENDA AS ULTIMA_VENDA,
    ESTOQUE.ULT_COMPRA AS ULTIMA_COMPRA,
    ESTOQUE.DT_CADAST AS DATA_CADASTRO,
    ESTOQUE.CF AS COD_NCM,
    ESTOQUE.CEST AS PERSONAL6,
    case ESTOQUE.id_tipoitem
    when 0 then '00 Mercadoria para Revenda'
    when 9 then '09 Servi�os'
    end as TIPO_ITEM,
    case ESTOQUE.ativo
    when 1 then 'Ativo'
    when 0 then 'Inativo'
    end as SITUACAO
FROM ESTOQUE
LEFT JOIN GRUPO ON GRUPO.ID_GRUPO = ESTOQUE.ID_GRUPO
LEFT JOIN CADASTRO ON CADASTRO.id_cadastro = ESTOQUE.ID_FORNECEDOR
