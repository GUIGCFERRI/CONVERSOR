SELECT
  F.ICOD_FORNECEDOR          AS CODIGO,
  F.VNOME_RAZAO_SOCIAL       AS NOME,
  F.VNOME_FANTASIA           AS FANTASIA,
  F.VCONTATO                 AS CONTATO,
  F.VCNPJ                    AS CNPJ_CNPF,
  F.VINSC_ESTADUAL           AS IE_RG,
  NULL                       AS IM,  -- Campo inexistente
  F.VLOGRADOURO              AS ENDERECO,
  F.VNUMERO                  AS NUMERO,
  F.VCOMPLEMENTO             AS COMPLEMENTO,
  F.VBAIRRO                  AS BAIRRO,
  M.VDESCRICAO               AS CIDADE,
  F.CUF                      AS UF, 
  -- Remove o hífen do campo CEP
  REPLACE(F.VCEP, '-', '')   AS CEP,
  -- Remove '(', ')', '-' do telefone
  REPLACE(REPLACE(REPLACE(F.VTEL_FIXO, '(', ''), ')', ''), '-', '') AS TELEFONE,
  -- Remove '(', ')', '-' do celular
  REPLACE(REPLACE(REPLACE(F.VTEL_CEL_OUTROS, '(', ''), ')', ''), '-', '') AS CELULAR,
  -- Remove '(', ')', '-' do fax
  REPLACE(REPLACE(REPLACE(F.VFAX, '(', ''), ')', ''), '-', '') AS FAX,
  F.VEMAIL                   AS EMAIL,
  F.VSITE                    AS SITE,
  F.VOBS                     AS OBSERVACOES,
  F.VNOME_PAIS               AS PAIS
FROM TBFORNECEDORES F
LEFT JOIN TBMUNICIPIOS M ON F.ICOD_MUNICIPIO = M.ICOD_MUNICIPIO;