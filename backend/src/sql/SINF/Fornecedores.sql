SELECT
--FORCLI.NFORCLI AS CODIGO,
FORCLI.RSOCIAL AS NOME,
FORCLI.ENDERECO,
FORCLI.NUMERO,
FORCLI.COMPLEMENTO,
FORCLI.BAIRRO,
FORCLI.CEP,
FORCLI.TEL1 AS TELEFONE,
FORCLI.CELULAR,
FORCLI.FAX,
FORCLI.EMAIL,
FORCLI.CONTATO,
FORCLI.CNPJ AS CNPJ_CNPF,
FORCLI.F_DTCADASTRO AS CADASTRO,
FORCLI.F_OBSERVACOES AS OBSERVACOES,
CIDADES.CIDADE,
CIDADES.UF,
FORCLI.NOME_FANTASIA AS FANTASIA,
FORCLI.IE AS IE_RG
FROM FORCLI
LEFT JOIN CIDADES ON FORCLI.CODCIDADE=CIDADES.CODCIDADE
WHERE FORCLI.TIPO=0


