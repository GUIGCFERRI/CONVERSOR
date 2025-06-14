SELECT 
  P.PES_CODIGO AS CODIGO
, P.PES_NOME AS NOME
, P.PES_CPF_CNPJ AS CNPJ_CNPF
, P.PES_RG_IE AS IE_RG
, P.PES_FANTASIA AS FANTASIA
, P.PES_EMAIL AS EMAIL
, PE.PEE_ENDERECO AS ENDERECO
, PE.PEE_NUMERO AS NUMERO
, PE.PEE_COMPLEMENTO AS COMPLEMENTO
, PE.PEE_BAIRRO AS BAIRRO
, PE.PEE_CIDADE AS CIDADE
, PE.PEE_UF AS UF
, PE.PEE_CEP AS CEP
, TE.PET_DDD || TE.PET_TELEFONE AS TELEFONE
, CE.PET_DDD || CE.PET_TELEFONE AS CELULAR
, FX.PET_DDD || FX.PET_TELEFONE AS FAX
FROM PESSOAS P
LEFT JOIN PESSOAS_ENDERECOS PE ON PE.PES_ID_FK = P.PES_ID 
LEFT JOIN PESSOAS_TELEFONES TE ON TE.PES_ID_FK = P.PES_ID AND TE.TIT_ID_FK='{00000000-0000-0000-0000-000000000001}' -- TELEFONE RESIDENCIAL
LEFT JOIN PESSOAS_TELEFONES CE ON CE.PES_ID_FK = P.PES_ID AND CE.TIT_ID_FK='{00000000-0000-0000-0000-000000000002}' -- TELEFONE CELULAR
LEFT JOIN PESSOAS_TELEFONES FX ON FX.PES_ID_FK = P.PES_ID AND FX.TIT_ID_FK='{00000000-0000-0000-0000-000000000003}' -- TELEFONE COMERCIAL
WHERE PES_FORNECEDOR = 'S';
