SELECT CAST(FORNECEDOR.CODFORN AS INTEGER) AS CODIGO,
FORNECEDOR.NOMEFORN AS NOME,
FORNECEDOR.ENDERECO,
FORNECEDOR.BAIRRO,
FORNECEDOR.CIDADE,
FORNECEDOR.ESTADO AS UF,
FORNECEDOR.CEP,
FORNECEDOR.TELEFONE,
FORNECEDOR.FAX,
FORNECEDOR.INSCR AS IE_RG,
FORNECEDOR.CNPJ AS CNPJ_CNPF,
FORNECEDOR.OBS AS OBSERVACOES,
FORNECEDOR.EMAIL
FROM FORNECEDOR

