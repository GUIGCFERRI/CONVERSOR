SELECT 
  C.id as CODIGO
, C.data_ficha as CADASTRO
, C.nome as FANTASIA
, C.razao_social as NOME
, CI.nome as CIDADE
, C.endereco
, C.bairro
, C.uf
, C.cep
, C.fone1 as TELEFONE
, C.fone2 as FAX
, C.celular1 as CELULAR
, case when C.cpf = '' or C.cpf is null then C.cnpj else C.cpf END AS CNPJ_CNPF
, case when C.rg = '' or C.rg is null then C.inscricao_estadual else C.rg END AS IE_RG
, C.data_nasc as NASCIMENTO
, C.pai
, C.mae
, C.conjugue
, C.empresa as LOCTRA
, C.funcao as PROFISSAO
, C.valor_limite as LIMITE_CREDITO
, C.e_mail as EMAIL
, C.obs_geral as OBSERVACOES
FROM clientes C
left join cidades CI on CI.id = c.id_cidade 
-- where id_empresa = '1'  --- AJUSTAR CASO UTILIZE MULTILOJAS
