SELECT
    cpr.id_pc_lancamento_parcela AS id,
    cpr.documento AS documento,
    cpr.id_pc_lancamento_parcela || '/' || cpr.documento AS historico,
    LPAD(CAST(cpr.id_fonte AS VARCHAR(6)), 6, '0') AS cod_cliente,
    COALESCE(cl.nome, cpr.nome_fonte) AS nom_cliente,
    CAST(cpr.emissao AS DATE) AS emissao,
    ROUND(ABS(cpr.valor_parcela), 4) AS valor_dup,
    cpr.vencimento AS vencimento,
    CAST(cpr.liquidacao AS DATE) AS recebimento,
    ROUND(ABS(cpr.juros), 4) AS valor_jur,
    ROUND(ABS(cpr.desconto), 4) AS valor_des,
    --ROUND(ABS(cpr.multa), 4) AS multa,
    --ROUND(ROUND(ABS(cpr.juros), 4) + ROUND(ABS(cpr.multa), 4), 4) AS encargos,  -- soma dos encargos
    ROUND(ABS(cpr.valor_liquidado), 4) AS valor_rec,
    SUBSTRING(cpr.documento FROM POSITION('/' IN cpr.documento) + 1) AS num_parcela,
    cpr.tipo_recebimento AS observacoes,
    'R' AS tipo_doc,
    '1' AS num_conta,
    '1' AS cto_custo,
    cl.cpf AS cnpj
FROM
    vw_contas_pagar_receber cpr
LEFT JOIN
    cliente cl ON cl.id_cliente = cpr.id_fonte
WHERE
    cpr.credito_ou_debito = '1' -- CONTAS A RECEBER
ORDER BY
    cpr.vencimento;
