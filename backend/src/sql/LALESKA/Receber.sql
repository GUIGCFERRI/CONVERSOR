SELECT 
       --MAX (CONCAT (CR.CODIGO, ' / ' ,CR.NUMERO)) AS DOCUMENTO
	   CONCAT (CR.CODIGO, ' / ' , F.DESCRICAO, ' / ' ,CR.CLIENTE) AS DOCUMENTO
      ,CONCAT (CR.CODIGO, ' / ' , F.DESCRICAO, ' / ' ,CR.CLIENTE) AS HISTORICO
      ,CR.CLIENTE AS COD_CLIENTE
      ,CONCAT (C.NOME, ' ' , C.SOBRENOME) AS NOM_CLIENTE 
      ,CR.VENCIMENTO AS VENCIMENTO
      ,CAST (CR.VALOR AS MONEY) AS VALOR_DUP
      ,CAST (CR.VALORPAGTO AS MONEY) AS VALOR_REC
      ,CAST (CR.DESCONTO AS MONEY) AS VALOR_DES
      ,CAST (CR.JUROS AS MONEY) AS VALOR_JUR
      ,B.DESCRICAO AS BANCO
      ,CR.NUMERO AS NUM_PARCELA
      ,CR.DATEMI AS EMISSAO
      ,CR.DATAPAGTO AS RECEBIMENTO
      ,F.DESCRICAO AS ESPECIE
      ,C.CPF AS CNPJ
      ,CONCAT (CR.LOCALPAGTO, ' / ' , CR.OBSERVACAO) AS OBSERVACOES
  FROM LALESKA_10524.dbo.CONTAREC AS CR
INNER JOIN CLIENTE C ON CR.CLIENTE = C.CODIGO
INNER JOIN FORMA F ON CR.FORMA = F.CODIGO
INNER JOIN BANCO B ON CR.BANCO = B.CODIGO
WHERE F.DESCRICAO LIKE 'CARNE' AND C.NOME <> ''
