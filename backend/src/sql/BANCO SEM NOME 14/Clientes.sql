SELECT
    TBCLIENTES.CODIGO AS CODIGO,
    TBCLIENTES.RAZAOSOCIAL AS NOME,
    TBCLIENTES.FANTASIA AS FANTASIA,
    TBCLIENTES.CONTATO AS CONTATO,
    case when TBCLIENTES.CPF = '' or TBCLIENTES.CPF is null then TBCLIENTES.CNPJ else TBCLIENTES.CPF END AS CNPJ_CNPF,
    case when TBCLIENTES.RG = '' or TBCLIENTES.RG is null then TBCLIENTES.INSCRESTADUAL else TBCLIENTES.RG END AS IE_RG,
    TBCLIENTES.INSCRMUNICIPAL AS IM,
    TBCLIENTES.ENDERECO AS ENDERECO,
    TBCLIENTES.NUMERO AS NUMERO,
    TBCLIENTES.COMPLEEND AS COMPLEMENTO,
    TBCLIENTES.BAIRRO AS BAIRRO,
    TBCLIENTES.CIDADE AS CIDADE,
    TBCLIENTES.UF AS UF,
    TBCLIENTES.CEP AS CEP,
    TBCLIENTES.TELEFONE AS TELEFONE,
    TBCLIENTES.TELEFONE2 AS CELULAR,
    TBCLIENTES.EMAIL AS EMAIL,
    TBCLIENTES.LIMITECREDITO AS LIMITE_CREDITO,
    TBCLIENTES.DTNASCIMENTO AS NASCIMENTO,
    TBCLIENTES.NOMEPAI AS PAI,
    TBCLIENTES.NOMEMAE AS MAE,
    TBCLIENTES.OBSERVACAO AS OBSERVACOES
    --TBCLIENTES.DTCADASTRO AS CADASTRO
FROM TBCLIENTES