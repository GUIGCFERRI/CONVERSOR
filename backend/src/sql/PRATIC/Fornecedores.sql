SELECT
    FORNECEDOR.CD_FORNECEDOR AS CODIGO,
    FORNECEDOR.NM_FORNECEDOR AS NOME,
    FORNECEDOR.NM_FANTASIA AS FANTASIA,
    FORNECEDOR.ED_FORNECEDOR AS ENDERECO,
    FORNECEDOR.BA_FORNECEDOR AS BAIRRO,
    CIDADE.nm_cidade AS CIDADE,
    CIDADE.uf_estado AS uf, 
    FORNECEDOR.NR_CEP AS CEP,
    FORNECEDOR.NR_CNPJ AS CNPJ_CNPF,
    FORNECEDOR.NR_IE AS IE_RG,
    FORNECEDOR.NR_IM AS IM,
    FORNECEDOR.ED_EMAIL AS EMAIL,
    FORNECEDOR.NR_TELEFONE AS TELEFONE,
    FORNECEDOR.NR_CONTACTB AS CONTATO
FROM FORNECEDOR
LEFT JOIN CIDADE ON CIDADE.cd_cidade = FORNECEDOR.CD_CIDADE