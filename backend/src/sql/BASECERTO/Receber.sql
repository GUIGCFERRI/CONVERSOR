SELECT
    TRECEBER.DOCUMENTO||'/'||TRECEBER.controle AS DOCUMENTO
   ,TRECEBER.DESCRICAOLANCAMENTO AS HISTORICO
   ,TRECEBER.CODCLIENTE AS COD_CLIENTE
   ,TRECEBER.CLIENTE AS NOM_CLIENTE
   ,CAST (TRECEBER.DATAHORACADASTRO AS DATE) AS EMISSAO
   ,TRECEBER.DATAVENCIMENTO AS VENCIMENTO
   ,TRECEBER.VALORORIGINAL AS VALOR_DUP
   ,TRECEBER.DATARECEBIMENTO AS RECEBIMENTO
   ,TRECEBER.VALORPAGO AS VALOR_REC
   ,TRECEBER.VALORJUROARECEBER AS VALOR_JUR
   ,TRECEBER.VALORDESCONTO AS VALOR_DES
   ,TRECEBER.ESPECIE
   ,TRECEBER.NOSSONUMERO AS NOSSO_NUM
   ,TRECEBER.NPARCELA AS NUM_PARCELA
   ,TRECEBER.DESCRICAOLANCAMENTO AS OBSERVACOES
   ,TCLIENTE.CNPJ
FROM TRECEBER
LEFT JOIN TCLIENTE ON TCLIENTE.CONTROLE = TRECEBER.CODCLIENTE
