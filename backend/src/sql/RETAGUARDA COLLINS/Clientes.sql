SELECT
  C.ICOD_CLIENTE              AS CODIGO,
  C.VNOME_RAZAO_SOCIAL        AS NOME,
  C.VAPELIDO_NOME_FANTASIA    AS FANTASIA,
  C.VCONTATO                  AS CONTATO,
  C.VCPF_CNPJ                 AS CNPJ_CNPF,
  C.VIE_RG                    AS IE_RG,
  NULL                        AS IM,  -- Campo inexistente
  C.VLOGRADOURO               AS ENDERECO,
  C.VNUMERO                   AS NUMERO,
  C.VCOMPLEMENTO              AS COMPLEMENTO,
  C.VBAIRRO                   AS BAIRRO,
  M.VDESCRICAO                AS CIDADE,
  C.CUF                       AS UF, 
  -- Remove o hífen do campo CEP
  REPLACE(C.VCEP, '-', '')    AS CEP,
  -- Remove '(', ')', '-' do telefone
  REPLACE(REPLACE(REPLACE(C.VTEL_FIXO, '(', ''), ')', ''), '-', '') AS TELEFONE,
  -- Remove '(', ')', '-' do celular
  REPLACE(REPLACE(REPLACE(C.VTEL_CEL_OUTROS, '(', ''), ')', ''), '-', '') AS CELULAR,
  -- Remove '(', ')', '-' do fax
  REPLACE(REPLACE(REPLACE(C.VFAX, '(', ''), ')', ''), '-', '') AS FAX,
  C.VEMAIL                    AS EMAIL,
  C.BOBS                      AS OBSERVACOES
FROM TBCLIENTES C
LEFT JOIN TBMUNICIPIOS M ON C.ICOD_MUNICIPIO = M.ICOD_MUNICIPIO;