SELECT
    SUBSTRING (CLICOD FROM 10 FOR 15) AS CODIGO,
    CLIDES AS NOME,
    CLIFAN AS FANTASIA,
    CLICPFCGC AS CNPJ_CNPF,
    CLIRGCGF AS IE_RG,
    CLIINSCMUN AS IM,
    CLIEND AS ENDERECO,
    CLINUM AS NUMERO,
    CLICMP AS COMPLEMENTO,
    CLIBAI AS BAIRRO,
    CLICEP AS CEP,
    CLICID AS CIDADE,
    CLIEST AS UF,
    CLITEL AS TELEFONE,
    CLITEL2 AS CELULAR,
    CLIFAX AS FAX,
    CLIEMAIL AS EMAIL,
    CLILIMCRE AS LIMITE_CREDITO,
    CLIMAE AS MAE,
    CLIPAI AS PAI,
    CLIOBS AS OBSERVACOES,
    CAST (CLIDTCAD AS DATE) AS CADASTRO
FROM CLIENTE
WHERE CLICOD > '000000000000000'
