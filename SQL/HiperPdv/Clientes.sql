SELECT 
    --entidade.id_entidade AS CODIGO
	ENTIDADE.NOME AS NOME
,	ENTIDADE.NOME AS FANTASIA
,	cast(entidade.data_hora_cadastro as DATE) AS CADASTRO
,	entidade.logradouro AS ENDERECO 
,	ENTIDADE.numero_endereco as NUMERO
,	ENTIDADE.BAIRRO AS BAIRRO
,   case when ENTIDADE.cnpj = '' or ENTIDADE.cnpj is null then ENTIDADE.cpf else ENTIDADE.cnpj END as CNPJ_CNPF
,   case when ENTIDADE.rg = '' or ENTIDADE.rg is null then ENTIDADE.ie else ENTIDADE.rg END AS IE_RG
, 	ENTIDADE.complemento AS COMPLEMENTO
,	ENTIDADE.CEP AS CEP
,	CIDADE.NOME AS CIDADE
, 	CIDADE.uf AS UF
, 	ENTIDADE.observacao AS OBSERVACOES
, 	concat (ENTIDADE.fone_primario_ddd,entidade.fone_primario_numero) AS TELEFONE
, 	concat (ENTIDADE.fone_secundario_ddd,ENTIDADE.fone_secundario_numero) AS CELULAR
,	ENTIDADE.EMAIL AS EMAIL
,	ENTIDADE.fone_primario_nome_contato AS CONTATO
, 	ENTIDADE.nome_mae AS MAE
, 	ENTIDADE.nome_pai AS PAI
FROM HiperPdv.dbo.ENTIDADE
LEFT JOIN HiperPdv.dbo.CIDADE ON ENTIDADE.id_cidade=cidade.id_cidade
WHERE ENTIDADE.flag_cliente = '1' OR ENTIDADE.flag_cliente = '0'
