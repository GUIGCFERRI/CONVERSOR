SELECT
    SUBSTRING([C�digo Fornecedor],2,7) AS CODIGO,
    [Nome Fornecedor] AS NOME,
    [Raz�o Social] AS FANTASIA,
    [Nome Contato] AS CONTATO,
    COALESCE(NULLIF([CNPJ], ''), [CPF]) AS CNPJ_CNPF,
    COALESCE(NULLIF([IE], ''), [RG]) AS IE_RG,
    [IM],
    [Endere�o] AS ENDERECO,
    [N�mero] AS NUMERO,
    [Complemento],
    [Bairro],
    [Cidade],
    [Estado] AS UF,
    [CEP],
    [Telefone],
    [Celular],
    [Fax],
    [Email],
    [Observa��es] AS OBSERVACOES
FROM 
    [WM_ShopEconomiaCentro].[dbo].[Fornecedores];