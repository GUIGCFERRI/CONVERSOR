SELECT FORNECEDOR.ID AS CODIGO,
FORNECEDOR.NOME,
FORNECEDOR.`RAZAO_SOCIAL` AS FANTASIA,
FORNECEDOR.`CNPJ_CPF` AS CNPJ_CNPF,
FORNECEDOR.IE AS IE_RG,
FORNECEDOR.`ENDERECO`,
FORNECEDOR.NUMERO,
FORNECEDOR.`BAIRRO`,
FORNECEDOR.CEP,
FORNECEDOR.FONE AS TELEFONE,
FORNECEDOR.FAX,
FORNECEDOR.OBS AS OBSERVACOES,
CIDADES.`NOME` AS CIDADE,
ESTADOS.UF
FROM FORNECEDOR
LEFT JOIN CIDADES ON FORNECEDOR.`ID_CIDADE`=CIDADES.ID
LEFT JOIN ESTADOS ON FORNECEDOR.`ID_ESTADO`=ESTADOS.ID
