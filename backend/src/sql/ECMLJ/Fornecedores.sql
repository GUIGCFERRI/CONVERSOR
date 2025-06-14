SELECT
    CAD_FORNECEDORES.ID AS CODIGO,
    CAD_FORNECEDORES.RAZAO AS NOME,
    CAD_FORNECEDORES.FANTASIA AS FANTASIA,
    CAD_FORNECEDORES.CNPJ AS CNPJ_CNPF,
    CAD_FORNECEDORES.INSC_ESTADUAL AS IE_RG,
    CAD_FORNECEDORES.EMAIL AS EMAIL,
    CAD_FORNECEDORES.ENDERECO AS ENDERECO,
    CAD_FORNECEDORES.NUMERO AS NUMERO,
    CAD_FORNECEDORES.COMPLEMENTO AS COMPLEMENTO,
    CAD_FORNECEDORES.BAIRRO AS BAIRRO,
    CAD_FORNECEDORES.CIDADE AS CIDADE,
    CAD_FORNECEDORES.UF AS UF,
    CAD_FORNECEDORES.CEP AS CEP,
    CAD_FORNECEDORES.FONE AS TELEFONE,
    CAD_FORNECEDORES.CELULAR AS CELLULAR,
    CAD_FORNECEDORES.FAX AS FAX
FROM CAD_FORNECEDORES
