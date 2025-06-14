SELECT
    CLIENTES.CLIENTESID AS CODIGO,
    CLIENTES.RAZAOSOCIAL AS NOME,
    CLIENTES.NOME AS FANTASIA,
    case when CLIENTES.CPF = '' or CLIENTES.CPF is null then CLIENTES.CNPJ else CLIENTES.CPF END AS CNPJ_CNPF,
    case when CLIENTES.RG = '' or CLIENTES.RG is null then CLIENTES.IE else CLIENTES.RG END AS IE_RG,
    CLIENTES.IM AS IM,
    ENDERECOS.ENDERECO AS ENDERECO,
    ENDERECOS.BAIRRO AS BAIRRO,
    CLIENTES.NUMERO AS NUMERO,
    CLIENTES.COMPLEMENTO AS COMPLEMENTO,
    ESTADOS.SIGLA AS UF,
    MUNICIPIOS.DESCRICAO AS CIDADE,
    ENDERECOS.CEP AS CEP,
    CLIENTES.TELEFONE AS TELEFONE,
    CLIENTES.CELULAR AS CELULAR,
    CLIENTES.EMAIL AS EMAIL,
    CLIENTES.OBSERVACAO AS OBSERVACOES,
    CLIENTES.LIMITECREDITO AS LIMITE_CREDITO,
    CLIENTES.SEXO AS SEXO,
    CLIENTES.ESTADOCIVIL AS EST_CIVIL,
    CLIENTES.DATACADASTRO AS CADASTRO,
    CLIENTES.DATANASCIMENTO AS NASCIMENTO
FROM CLIENTES
LEFT JOIN ENDERECOS ON ENDERECOS.ENDERECOSID = CLIENTES.ENDERECOSID
LEFT JOIN MUNICIPIOS ON MUNICIPIOS.MUNICIPIOSID = ENDERECOS.MUNICIPIOSID
LEFT JOIN ESTADOS ON ESTADOS.ESTADOSID = MUNICIPIOS.ESTADOSID