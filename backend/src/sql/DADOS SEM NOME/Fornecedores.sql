SELECT TBFORNEC.FORCODIGO AS CODIGO,
TBFORNEC.FORFANTAS AS FANTASIA,
TBFORNEC.FORRAZSOC AS NOME,
TBCIDADE.CIDCIDADE AS CIDADE,
TBCIDADE.CIDESTADO AS UF,
TBFORNEC.FORENDERE AS ENDERECO,
TBFORNEC.FORNUMERO AS NUMERO,
TBFORNEC.FORBAIRRO AS BAIRRO,
TBFORNEC.FORCEP AS CEP,
TBFORNEC.FORCOMPLE AS COMPLEMENTO,
TBFORNEC.FORTELEF1 AS TELEFONE,
TBFORNEC.FOREMAIL AS EMAIL
FROM TBFORNEC
LEFT JOIN TBCIDADE ON TBFORNEC.CIDCODIGO=TBCIDADE.CIDCODIGO


