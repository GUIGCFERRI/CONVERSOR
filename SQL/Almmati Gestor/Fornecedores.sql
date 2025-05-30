SELECT 
  f.fornecedores_codigo as CODIGO
, f.fornecedores_cnpj as CNPJ_CNPF
, f.fornecedores_inscricaoestadual as IE_RG
, f.fornecedores_nome as NOME
, f.fornecedores_fantasia as FANTASIA
, f.fornecedores_endereco as ENDERECO
, f.fornecedores_numero as NUMERO
, f.fornecedores_bairro as BAIRRO
, f.fornecedores_cep as CEP
, c.cidades_nome as CIDADE
, c.cidades_uf  as UF
, f.fornecedores_telefone as TELEFONE
, f.fornecedores_telefone2 as FAX
, f.fornecedores_email as EMAIL
, f.fornecedores_contato as CONTATO
, f.fornecedores_obs as OBSERVACOES
FROM fornecedores f
left join cidades c on c.cidades_codigo = f.cidades_codigo 
where empresa_codigo = '1'   -- <<< AJUSTAR AQUI QUANDO TIVER MULTILOJAS
