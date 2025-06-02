SELECT
    CHAVE as documento,
    cast(DOCPARCELA as int) || ' - ' || LETRA as historico,
    NOME as nom_cliente,
    cast(CODIGO as int) as cod_cliente,
    DATAEMISSAO as emissao,
    DATAVENCIMENTO as vencimento,
    DATAPAGAMENTO as recebimento,
    VALORDOCUMENTO as valor_dup,
    CGC as cnpj,
'1' AS NUM_PARCELA
FROM TBCONTA_RECEBER
