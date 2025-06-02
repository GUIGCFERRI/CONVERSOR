SELECT
  f.cod_fornecedores AS CODIGO,
  f.razaosocial AS NOME,
  f.nomefantasia AS FANTASIA,
  fc.contato AS CONTATO,
  f.cnpj AS CNPJ_CNPF,
  f.ie AS IE_RG,
  f.im AS IM,
  f.logr AS ENDERECO,
  f.num AS NUMERO,
  f.compl AS COMPLEMENTO,
  f.bair AS BAIRRO,
  f.cidade AS CIDADE,
  f.uf AS UF,
  f.cep AS CEP,
  CONCAT(fc.ddd1, fc.telefone1) AS TELEFONE,
  CONCAT(fc.ddd2, fc.telefone2) AS CELULAR,
  fc.email AS EMAIL,
  f.obs AS OBSERVACOES
FROM
  public.fornecedores f
LEFT JOIN (
  SELECT DISTINCT ON (cod_fornecedores)
    cod_fornecedores,
    contato,
    ddd1,
    telefone1,
    ddd2,
    telefone2,
    email
  FROM
    public.fornecedores_contatos
  ORDER BY cod_fornecedores, cod_fornecedorescontatos
) fc ON fc.cod_fornecedores = f.cod_fornecedores;