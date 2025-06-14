SELECT 
    SUBSTRING ([C�digo Cliente],2,7) AS CODIGO,
    [Nome Cliente] AS NOME,
    [Apelido] AS FANTASIA,
    COALESCE(NULLIF([CNPJ], ''), [CPF]) AS CNPJ_CNPF,
    COALESCE(NULLIF([IE], ''), [RG]) AS IE_RG,
    [IM],
    [Endere�o] AS ENDERECO,
    [N�mero] AS NUMERO,
    [Complemento],
    [Bairro],
    [Cidade],
    [C�digo Cidade] AS ID_MUNICIPIO,
    [Estado] AS UF,
    [CEP],
    [Telefone] AS TELEFONE,
    [Celular] AS CELULAR,
    [Fax] AS FAX,
    [Email] AS EMAIL,
    [Rendimentos] AS RENDA,
    [Limite Cr�dito] AS LIMITE_CREDITO,
    [Data Cadastro] AS CADASTRO,
    [Observa��es] AS OBSERVACOES,
    [Estado Civil] AS EST_CIVIL,
    [Nome Pai] AS PAI,
    [Nome M�e] AS MAE,
    [Naturalidade],
    [Cargo] AS PROFISSAO,
    [Nome C�njuge] AS CONJUGE
FROM 
    [WM_ShopEconomiaCentro].[dbo].[Clientes];