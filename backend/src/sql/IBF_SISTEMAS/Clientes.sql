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
  vl_cre_cli AS LIMITE_CREDITO,
  dt_nasccli AS NASCIMENTO,
  nom_pai AS PAI,
  nom_mae AS MAE,
  cta_conj AS CONJUGE,
  CASE 
    WHEN inativo = 'N' THEN 'Ativo'
    WHEN inativo = 'S' THEN 'Inativo'
    ELSE 'Desconhecido'
  END AS STATUS
FROM entidade
WHERE tipo_cad NOT IN ('F', 'FJ', 'FJT', 'FT') -- Para clientes (diferente dos tipos de fornecedores)
