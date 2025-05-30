SELECT 
  f.codigo
, f.CPF_CGC as CNPJ_CNPF
, f.RG_INSC_ESTADUAL as IE_RG
, f.NOME_RAZAOSOCIAL as NOME
, f.NOME_FANTASIA as FANTASIA
, f.ENDERECO
, f.BAIRRO
, f.CIDADE
, f.ESTADO as UF
, f.CEP
, f.numero
, f.fone as TELEFONE
, f.fax
, f.obs as OBSERVACOES
, f.inscmunicipal as IM
FROM fornecedores f
