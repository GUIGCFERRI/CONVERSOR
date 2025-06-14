SELECT
    RECEBER.codigo AS ID,
    left (RECEBER.CODIGO||'/'||RECEBER.DOCUMENTO,14) AS DOCUMENTO,
    RECEBER.historico AS HISTORICO,
    RECEBER.codcliente AS COD_CLIENTE,
    CLIENTE.nome AS NOM_CLIENTE,
    CAST(RECEBER.dataemissao AS DATE) AS EMISSAO,
    RECEBER.datavencimento AS VENCIMENTO,
    RECEBER.valor AS VALOR_DUP,
    RECEBER.datapagamento AS RECEBIMENTO,
    RECEBER.valorrecebido AS VALOR_REC,
    RECEBER.juros AS VALOR_JUR,
    RECEBER.desconto AS VALOR_DES,
    1 AS NOSSO_NUM,
    RIGHT(RECEBER.numparcela, 2) AS NUM_PARCELA,

    CASE 
        WHEN RECEBER.cancelado = 'N' THEN 0
        WHEN RECEBER.cancelado = 'S' THEN 1
        ELSE NULL
    END AS CANCELADA,

    RECEBER.complemento AS OBSERVACOES
FROM RECEBER
LEFT JOIN CLIENTE ON CLIENTE.codigo = RECEBER.codcliente
WHERE CLIENTE.nome <> ''
