SELECT
    --FO.fornecedorid AS CODIGO,
	case when FO.fornecedorrazaosocial = '' or FO.fornecedorrazaosocial is null then FO.fornecedornomefantasia else FO.fornecedorrazaosocial END as NOME,
    --FO.fornecedorrazaosocial AS NOME,
    FO.fornecedornomefantasia AS FANTASIA,
    FO.fornecedorcnpj AS CNPJ_CNPF,
    FO.fornecedorie AS IE_RG,
    FO.fornecedorendereco AS ENDERECO,
    FO.fornecedorbairro AS BAIRRO,
    MUN.municipionome AS CIDADE ,
    UF.ufsigla AS UF,
    FO.fornecedorcep AS CEP,
    FO.fornecedorcomplemento AS COMPLEMENTO,
    FO.fornecedortelefone AS TELEFONE,
    FO.fornecedorcelular AS CELULAR,
    FO.fornecedorfax AS FAX,
    FO.fornecedoremail AS EMAIL,
    FO.fornecedorcontato AS CONTATO,
    FO.fornecedorobs AS OBSERVACOES
	FROM FORNECEDOR AS FO
	left join municipio MUN on cast(FO.fornecedorcidade as integer) = cast( MUN.municipioid as integer)
    LEFT JOIN UF UF on cast (FO.FORNECEDORUF AS INTEGER) = cast  (UF.UFID as integer)