SELECT
    TITULOS.IDCLIFOR AS COD_CLIENTE,
    TITULOS.NOMECLIFOR AS NOM_CLIENTE,
    TITULOS.IDTITULO ||'/'|| IDPARCELA ||'/'|| TITULOS.IDSERIE AS DOCUMENTO,
    TITULOS.IDTITULO ||'/'|| IDPARCELA ||'/'|| TITULOS.IDSERIE AS HISTORICO,
    TITULOS.IDSERIE,
    TITULOS.IDPARCELA AS PARCELA,
    TITULOS.IDTIPO,
    TITULOS.EMISSAO AS EMISSAO,
    TITULOS.VENCIMENTO AS VENCIMENTO,
    TITULOS.DTPAGAMENTO AS RECEBIMENTO,
    TITULOS.VALOR AS VALOR_DUP,
    TITULOS.SALDO AS VALOR_REC,
    TITULOS.VALDESCONTO AS VALOR_DES,
    min (PESSOAS.CNPJCPF) AS CNPJ,
    '0' AS NUNCONTA,
    '0' AS CTO_CUSTO,
    '0' AS NOVO_DOC
FROM TITULOS
LEFT JOIN PESSOAS ON PESSOAS.NOME = TITULOS.NOMECLIFOR
WHERE TITULOS.IDTIPO = 'R'
GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,15,16
