SELECT
    --CLIFOR.CLIENTE,
    CLIFOR.CODIGO,
    CLIFOR.NOME,
    CLIFOR.FANTASIA,
    CLIFOR.ENDERECO,
    BAIRROS.NOME BAIRRO,
    CIDADE.cidade,
    CIDADE.uf,
    CLIFOR.CEP,
    CLIFOR.TELEFONE,
    CLIFOR.CELULAR,
    CLIFOR.FAX,
    CLIFOR.EMAIL,
    CLIFOR.IE_RG,
    CLIFOR.CNPJ_CNPF
FROM CLIFOR
 LEFT JOIN CIDADE ON CLIFOR.PERSONAL2 = CIDADE.CODIGO
 LEFT JOIN BAIRROS ON CLIFOR.personal1 = BAIRROS.codigo_bairro and CIDADE.CODIGO = BAIRROS.CODIGO_CIDADE
 WHERE CLIFOR.CLIENTE = '-1'
