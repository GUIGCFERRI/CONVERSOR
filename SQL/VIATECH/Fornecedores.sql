SELECT 
  F.id as CODIGO
, F.nome as FANTASIA
, F.razao_social as NOME
, F.endereco
, F.bairro
, CI.nome as CIDADE
, F.uf
, F.cep
, F.fone1 as TELEFONE
, F.fone2 as FAX
, F.celular1 as CELULAR
, case when F.cpf = '' or F.cpf is null then F.cnpj else F.cpf END AS CNPJ_CNPF
, F.inscricao_estadual as IE_RG
, F.e_mail as EMAIL
, F.representante_nome as CONTATO
, F.representante_fone as PERSONAL1
, F.representante_celular as PERSONAL2
, F.representante_e_mail as PERSONAL3
, F.obs as OBSERVACOES
FROM fornecedor F
left join cidades CI on CI.id = F.id_cidade
-- where id_empresa = '1'  --- AJUSTAR CASO UTILIZE MULTILOJAS
