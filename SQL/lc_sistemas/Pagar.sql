SELECT
  CONTAMOVIMENTO.ID AS NUM_CONTA,
  PAGAMENTO.NOME AS TIPO_DOC,
  fornecedor.id AS COD_FORNECEDOR,
  fornecedor.nome as NOM_FORNECEDOR,
  fornecedor.cnpj_cpf AS CNPJ,
  -- concat (PAGAR.documento, ' - ', PAGAR.numero_boleto) AS DOCUMENTO,
  CONCAT (PAGAR.numero_nf, ' - ', PAGAR.parcela) AS HISTORICO,
 CONCAT (PAGAR.numero_nf, ' - ', PAGAR.parcela, ' - ', `pagar`.`id_fornecedor` ) AS DOCUMENTO,
  PAGAR.lancamento AS EMISSAO,
  PAGAR.vencimento AS VENCIMENTO,
  PAGAR.valor_original AS VALOR_DUP,
  PAGAR.valor_desc AS VALOR_DESC,
  PAGAR.valor_pag AS VALOR_PAG,
  PAGAR.data_pag AS PAGAMENTO,
  PAGAR.obs AS OBSERVACOES
FROM PAGAR
left join fornecedor on fornecedor.id = pagar.id_fornecedor
LEFT JOIN PAGAMENTO ON PAGAMENTO.ID = PAGAR.ID_PAGAMENTO
LEFT JOIN CONTAMOVIMENTO ON CONTAMOVIMENTO.ID = PAGAR.ID_CONTAMOVIMENTO
