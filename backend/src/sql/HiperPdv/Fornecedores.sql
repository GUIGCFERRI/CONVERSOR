SELECT 
--    entidade.id_entidade AS CODIGO
	ENTIDADE.NOME AS NOME
,	pessoa_juridica.nome_fantasia AS FANTASIA
,	entidade.logradouro AS ENDERECO 
,	ENTIDADE.numero_endereco as NUMERO
,	ENTIDADE.BAIRRO AS BAIRRO
, 	CONCAT(pessoa_juridica.cnpj,pessoa_fisica.CPF) as CNPJ_CNPF
,	pessoa_juridica.IE AS IE_RG
, 	ENTIDADE.complemento AS COMPLEMENTO
,	ENTIDADE.CEP AS CEP
,	CIDADE.NOME AS CIDADE
, 	CIDADE.uf AS UF
, 	ENTIDADE.observacao AS OBSERVACOES
, 	concat (ENTIDADE.fone_primario_ddd,entidade.fone_primario_numero) AS TELEFONE
, 	concat (ENTIDADE.fone_secundario_ddd,ENTIDADE.fone_secundario_numero) AS CELULAR
,	ENTIDADE.EMAIL AS EMAIL
,	ENTIDADE.fone_primario_nome_contato AS CONTATO
FROM Hiper.dbo.ENTIDADE
LEFT JOIN Hiper.dbo.pessoa_juridica ON entidade.id_entidade=pessoa_juridica.id_entidade
LEFT JOIN Hiper.dbo.pessoa_fisica ON entidade.id_entidade=pessoa_fisica.id_entidade
LEFT JOIN Hiper.dbo.CIDADE ON ENTIDADE.id_cidade=cidade.id_cidade
WHERE ENTIDADE.flag_fornecedor=1
