SELECT
  TCPES.CODPESSOA AS CODIGO,
  TCPES.NOMEPESSOA AS NOME,
  TCPES.RAZAOSOCIAL AS FANTASIA,
  TCPES.NUMENDERECO AS NUMERO,
  TCPES.COMPLEMENTO AS COMPLEMENTO,
  TCPES.BAIRRO AS BAIRRO,
  TCCID.NOMECIDADE AS CIDADE,
  TCCID.CODUF AS UF,
  MIN (TCTEL.NUMEROTEL) AS CELULAR,
  TCPES.CEP AS CEP,
  TCPES.IDENTINSCESTAD AS IE_RG,
  TCPES.CGC_CPF AS CNPJ_CNPF,
  TCPES.OBS AS OBSERVACOES,
  TCPES.INSCMUNICIPAL AS IM,
  TCPES.ENDERECO AS ENDERECO,
  TCPES.EMAIL AS EMAIL
FROM TCPES
LEFT JOIN TCCID ON TCCID.CODCIDADE = TCPES.CODCIDDADE
LEFT JOIN TCTEL ON TCTEL.CODPESSOA = TCPES.CODPESSOA
WHERE TCPES.CODPESSOA > '0' AND TCPES.FORNECEDOR = 'S'
GROUP BY 1,2,3,4,5,6,7,8,10,11,12,13,14,15,16
