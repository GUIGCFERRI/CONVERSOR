SELECT
  id_fornec       AS CODIGO,
  nome            AS NOME,
  nome_fantasia   AS FANTASIA,
  contato         AS CONTATO,
  cnpj            AS CNPJ_CNPF,
  ie              AS IE_RG,
  NULL            AS IM,
  endereco        AS ENDERECO,
  numero          AS NUMERO,
  complemento     AS COMPLEMENTO,
  bairro          AS BAIRRO,
  cidade          AS CIDADE,
  uf              AS UF,
  cep             AS CEP,
  tel_fixo        AS TELEFONE,
  celular         AS CELULAR,
  fax             AS FAX,
  email           AS EMAIL,
  obs             AS OBSERVACOES
FROM
  public.fornecedor_table;
