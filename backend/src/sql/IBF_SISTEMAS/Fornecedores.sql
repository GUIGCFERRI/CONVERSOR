SELECT 
  cod_entid AS CODIGO,
  nom_entid AS NOME,
  fant_entid AS FANTASIA,
  cgccpf_entid AS CNPJ_CNPF,
  inscri_entid AS IE_RG,
  inscricao_municipal AS IM,
  contat_entid AS CONTATO,
  end_entid AS ENDERECO,
  numero_endereco AS NUMERO,
  complemento AS COMPLEMENTO,
  bai_entid AS BAIRRO,
  cid_entid AS CIDADE,
  est_entid AS UF,
  cep_entid AS CEP,
  fon_entid AS TELEFONE,
  nextel AS CELULAR,
  fax_entid AS FAX,
  email1 AS EMAIL,
  CASE 
    WHEN inativo = 'N' THEN 'Ativo'
    WHEN inativo = 'S' THEN 'Inativo'
    ELSE 'Desconhecido'  -- Caso o valor de 'inativo' não seja 'N' nem 'S'
  END AS SITUACAO
FROM entidade
WHERE tipo_cad IN ('F', 'FJ', 'FJT', 'FT');
