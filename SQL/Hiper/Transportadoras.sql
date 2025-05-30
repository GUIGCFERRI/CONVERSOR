SELECT 
                entidade.id_entidade AS CODIGO
,	ENTIDADE.NOME AS RAZAO_SOCIAL
,	entidade.logradouro AS ENDERECO 
, 	CONCAT(pessoa_juridica.cnpj,pessoa_fisica.CPF) as CNPJ
,	pessoa_juridica.IE AS IE
,	CIDADE.NOME AS CIDADE
, 	CIDADE.uf AS UF
, 	concat (ENTIDADE.fone_primario_ddd,entidade.fone_primario_numero) AS TELEFONE
,	ENTIDADE.EMAIL AS EMAIL
FROM Hiper.dbo.ENTIDADE
LEFT JOIN Hiper.dbo.pessoa_juridica ON entidade.id_entidade=pessoa_juridica.id_entidade
LEFT JOIN Hiper.dbo.pessoa_fisica ON entidade.id_entidade=pessoa_fisica.id_entidade
LEFT JOIN Hiper.dbo.CIDADE ON ENTIDADE.id_cidade=cidade.id_cidade
--WHERE ENTIDADE.flag_cliente = '1' OR ENTIDADE.flag_cliente = '0'
where tipo_entidade=2 and flag_transportadora<>0 /*flag_fornecedor=1  and id_entidade=32553*/
