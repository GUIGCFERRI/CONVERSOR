SELECT
TABCLI.NOMCLI AS NOME,
TABCLI.FANCLI AS FANTASIA,
TABCLI.ENDCLI AS ENDERECO,
TABCLI.BAICLI AS BAIRRO,
TABCLI.CEP,
TABCLI.CIDADE,
TABCLI.UF,
TABCLI.CGC AS CNPJ_CNPF,
TABCLI.INSCEST AS IE_RG,
TABCLI.NRENDCLI AS NUMERO
FROM TABCLI
WHERE TABCLI.NOMCLI <> ''


