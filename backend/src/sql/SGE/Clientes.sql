select
  C.ID as CODIGO
, C.NOME as NOME
, C.APELIDO as FANTASIA
, C.DOCUMENTO as CNPJ_CNPF
, C.INSC_MUNICIPAL as IM
, case when C.RG = '' or C.RG is null then C.INSC_ESTADUAL else C.RG END AS IE_RG
, C.ENDERECO as ENDERECO
, C.NUMERO as NUMERO
, C.COMPLEMENTO as COMPLEMENTO
, C.BAIRRO as BAIRRO
, C.CEP as CEP
, M.NOME as CIDADE
, E.SIGLA as UF
, C.TELEFONE as TELEFONE
, C.CELULAR as CELULAR
, C.EMAIL as EMAIL
, C.NOME_CONTATO as CONTATO
, date (C.DATA_ANIV) as nascimento
FROM dbdados.contato c
left join municipio m on m.ID = c.ID_MUNICIPIO 
left join estado e on e.id = c.ID_ESTADO
