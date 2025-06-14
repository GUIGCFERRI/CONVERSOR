SELECT
    GIL_CAD.CD_COD_CAD AS CODIGO,
    GIL_CAD.CD_NOME AS NOME,
    GIL_CAD.CD_FAT_ENDERECO AS ENDERECO,
    GIL_CAD.CD_FAT_COMPLEMENTO AS COMPLEMENTO,
    GIL_CAD.CD_FAT_NRO AS NUMERO,
    GIL_CAD.CD_FAT_BAIRRO AS BAIRRO,
    GIL_CID.CI_NOME AS CIDADE,
    GIL_CID.CI_UF AS UF,
    GIL_CAD.CD_FAT_CEP AS CEP,
    GIL_CAD.CD_CPF_CGC AS CNPJ_CNPF,
    GIL_CAD.CD_IEST AS IE_RG,
    GIL_CAD.CD_IMUN AS IM,
    GIL_CAD.CD_FONE AS TELEFONE,
    GIL_CAD.CD_FAX AS FAX,
    GIL_CAD.CD_CELULAR AS CELULAR,
    GIL_CAD.CD_EMAIL AS EMAIL,
    GIL_CAD.CD_CONTATO1 AS CONTATO,
    GIL_CAD.CD_OBS_1 AS OBSERVACOES
FROM GIL_CAD
LEFT JOIN GIL_CID ON GIL_CID.ci_cod = GIL_CAD.CD_FAT_COD_CID
WHERE GIL_CAD.CD_CLI_FOR = '2' ---FORNECEDORES
