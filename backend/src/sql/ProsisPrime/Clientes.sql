SELECT
    FOR_CLI.ID AS CODIGO,
    FOR_CLI.NOME AS NOME,
    FOR_CLI.NOME_FANTASIA AS FANTASIA,
    FOR_CLI.CONTATO AS CONTATO,
    case when FOR_CLI.CNPJ = '' or FOR_CLI.CNPJ is null then FOR_CLI.CPF else FOR_CLI.CNPJ END AS CNPJ_CNPF,
    case when FOR_CLI.INSCRICAO_ESTADUAL = '' or FOR_CLI.INSCRICAO_ESTADUAL is null then FOR_CLI.RG else FOR_CLI.INSCRICAO_ESTADUAL END AS IE_RG,
    FOR_CLI.INSCRICAO_MUNICIPAL AS IM,
    FOR_CLI.EMAIL AS EMAIL,
    FOR_CLI.ENDERECO AS ENDERECO,
    FOR_CLI.NUMERO AS NUMERO,
    FOR_CLI.COMPLEMENTO AS COMPLEMENTO,
    FOR_CLI.BAIRRO AS BAIRRO,
    FOR_CLI.CIDADE AS CIDADE,
    FOR_CLI.CEP AS CEP,
    FOR_CLI.UF AS UF,
    FOR_CLI.DDD || FOR_CLI.FONE AS TELEFONE,
    FOR_CLI.DDD_CELULAR || FOR_CLI.CELULAR AS CELULAR,
    FOR_CLI.DDD || FOR_CLI.FAX AS FAX,
    FOR_CLI.LIMITE_CREDITO AS LIMITE_CREDITO,
    FOR_CLI.ESTADO_CIVIL AS EST_CIVIL,
    FOR_CLI.NOME_PAI AS PAI,
    FOR_CLI.NOME_MAE AS MAE,
    FOR_CLI.NOME_CONJUGUE AS CONJUGE,
    FOR_CLI.OBSERVACOES AS OBSERVACOES,
    FOR_CLI.DATA_CADASTRO AS CADASTRO
FROM FOR_CLI
WHERE NOME IS NOT NULL AND NOME <> ''
