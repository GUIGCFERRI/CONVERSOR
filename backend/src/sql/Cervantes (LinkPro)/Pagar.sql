SELECT
    docs.id_pc_lancamento_parcela AS id,
    CASE
        WHEN TRIM(COALESCE(docs.documento, '')) = '' THEN 'SEM DOC ' || docs.seq
        ELSE docs.documento
    END AS documento,
    docs.id_pc_lancamento_parcela || '/' ||
    CASE
        WHEN TRIM(COALESCE(docs.documento, '')) = '' THEN 'SEM DOC ' || docs.seq
        ELSE docs.documento
    END AS historico,
    LPAD(CAST(docs.id_fonte AS VARCHAR(6)), 6, '0') AS cod_fornecedor,
    COALESCE(f.razao_social, docs.nome_fonte) AS nom_fornecedor,
    CAST(docs.emissao AS DATE) AS emissao,
    ROUND(ABS(docs.valor_parcela), 4) AS valor_dup,
    docs.vencimento AS vencimento,
    CAST(docs.liquidacao AS DATE) AS pagamento,
    ROUND(ABS(docs.juros), 4) AS valor_jur,
    ROUND(ABS(docs.desconto), 4) AS valor_des,
    --ROUND(ABS(docs.multa), 4) AS multa,
    --ROUND(ROUND(ABS(docs.juros), 4) + ROUND(ABS(docs.multa), 4), 4) AS encargos,
    ROUND(ABS(docs.valor_liquidado), 4) AS valor_pag,
    docs.tipo_recebimento AS observacoes,
    'P' AS tipo_doc,
    '1' AS num_conta,
    '1' AS cto_custo,
    f.cpf_cnpj AS cnpj
FROM
    (
      SELECT
          cpr.*,
          ROW_NUMBER() OVER (ORDER BY cpr.vencimento, cpr.id_pc_lancamento_parcela) AS seq
      FROM vw_contas_pagar_receber cpr
      WHERE cpr.credito_ou_debito = '0' --- CONTAS A PAGAR
    ) AS docs
LEFT JOIN fornecedor f ON f.id_fornecedor = docs.id_fonte
ORDER BY docs.vencimento;
