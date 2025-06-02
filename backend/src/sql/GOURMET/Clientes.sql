SELECT 
  etd.etdcodigo AS CODIGO,
  etd.etdidentificacao AS NOME,
  etd.etdapelido AS FANTASIA,  
  etd.etddoc1 AS CNPJ_CNPF, 
  edr.edrrua AS ENDERECO,
  edr.edrnumero AS NUMERO,
  edr.edrcomple AS COMPLEMENTO,
  edr.edrbairro AS BAIRRO,
  cdd.cddnome AS CIDADE,
  ufs.ufssigla AS UF,
  edr.edrcep AS CEP,
  vcli.etftelefone AS TELEFONE, -- Telefone vindo da tabela v_cli
  NULL AS CELULAR,
  NULL AS FAX,
  NULL AS EMAIL,  
  etd.etdobs AS OBSERVACOES  
FROM etd
LEFT JOIN edr ON etd.etdcodigo = edr.etdcodigo
LEFT JOIN cdd ON edr.cddcodigo = cdd.cddcodigo
LEFT JOIN ufs ON cdd.ufscodigo = ufs.ufscodigo
LEFT JOIN (
  SELECT DISTINCT etdidentificacao, etftelefone
  FROM v_cli
) AS vcli ON etd.etdidentificacao = vcli.etdidentificacao
GROUP BY etd.etdcodigo;  -- Evitar duplicação de registros, mantendo um único telefone