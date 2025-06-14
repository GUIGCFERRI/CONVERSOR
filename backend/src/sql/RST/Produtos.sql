SELECT
    CODITE AS CODIGO,
    DENITE AS DESCRICAO,
    CODEAN AS BARRAS,
   (select first 1 FAT222_001.QTDEST from FAT222_001 where FAT220_001.CODITE = FAT222_001.CODITE order by FAT222_001.DATAXX desc) as qtd,
    CUSENT AS PRECO_CUSTO,
    MARGEMLUC AS MARGEM_LUCRO,
    PCVND1 AS PRECO_VENDA,
    SITTRI AS ST,
    CFOPXX AS CF,
    CSTPIS AS PIS_CODIGO,
    PPIS AS PIS_ALIQ_NOR,
    CSTCOFINS AS COFINS_CODIGO,
    PCOFINS AS COFINS_ALIQ_NOR,
    OBSXXX AS OBSERVACOES,
    NCMXXX AS COD_NCM,
    CEST AS PERSONAL6,
    CODEXT AS COD_FABRICANTE,
    DTUENT AS ULTIMA_COMPRA,
    DTUSAI AS ULTIMA_VENDA,
    DATALT AS ALTERACAO_PRECO, 
    DATCAD AS DATA_CADASTRO,
    case when ATIVOX = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
FROM FAT220_001
