SELECT
    FLAN.IDLAN ||     FLAN.NUMERODOCUMENTO AS DOCUMENTO,
    SUBSTRING(FLAN.CODCFO from 2 FOR 6) AS COD_FORNECEDOR,
    FCFO.nome AS NOM_FORNECEDOR,
    FLAN.PAGREC,
    FLAN.DATAVENCIMENTO AS VENCIMENTO,
    FLAN.DATAEMISSAO AS EMISSAO,
    FLAN.DATABAIXA AS PAGAMENTO,
    FLAN.HISTORICO,
    FLAN.VALORORIGINAL AS VALOR_DUP,
    FLAN.VALORBAIXADO AS VALOR_PAG,
    FCFO.cgccfo AS CNPJ
FROM FLAN
LEFT JOIN FCFO ON FLAN.codcfo = FCFO.codcfo

WHERE FLAN.PAGREC = 'P'
