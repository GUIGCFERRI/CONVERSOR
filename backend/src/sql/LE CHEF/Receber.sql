SELECT
    --RECEBER.DOCUMENTO AS DOCUMENTO,
    -- receber.documento || substring (receber.registro from 2 for 5) AS DOCUMENTO,
    receber.documento || right (receber.registro,3) AS DOCUMENTO,
    -- receber.documento  AS DOCUMENTO,
    RECEBER.HISTORICO,
    cadastro.id_cadastro AS COD_CLIENTE,
    cadastro.razao AS NOM_CLIENTE,
    CADASTRO.CGC AS CNPJ,
    RECEBER.VALOR_DUPL AS VALOR_DUP,
    RECEBER.PORTADOR,
    RECEBER.EMISSAO,
    RECEBER.VENCIMENTO,
    RECEBER.RECEBIMENT AS RECEBIMENTO,
    RECEBER.VALOR_RECE AS VALOR_REC,
    RECEBER.NUMERONF,
    RECEBER.CONTA,
    RECEBER.CONTA AS NUM_PARCELA,
    --RECEBER.FORMA_VENDA AS ESPECIE,
    RECEBER.VALOR_JURO AS VALOR_JUR,
    RECEBER.DOCUMENTO AS NOSSO_NUM,
    RECEBER.OBS AS OBSERVACOES
FROM RECEBER
LEFT JOIN cadastro ON cadastro.id_cadastro = RECEBER.cadastro
WHERE cadastro.id_cadastro IS NOT NULL or cadastro.id_cadastro <> ''
