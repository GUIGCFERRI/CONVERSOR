SELECT
    SUBSTRING([Código Fornecedor],2,7) AS CODIGO,
    [Nome Fornecedor] AS NOME,
    [Razão Social] AS FANTASIA,
    [Nome Contato] AS CONTATO,
    COALESCE(NULLIF([CNPJ], ''), [CPF]) AS CNPJ_CNPF,
    COALESCE(NULLIF([IE], ''), [RG]) AS IE_RG,
    [IM],
    [Endereço] AS ENDERECO,
    [Número] AS NUMERO,
    [Complemento],
    [Bairro],
    [Cidade],
    [Estado] AS UF,
    [CEP],
    [Telefone],
    [Celular],
    [Fax],
    [Email],
    [Observações] AS OBSERVACOES
FROM 
    [WM_ShopEconomiaCentro].[dbo].[Fornecedores];