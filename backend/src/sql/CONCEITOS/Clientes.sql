SELECT 
cp.ID_PARCEIRO_NEGOCIO AS CODIGO,
cp.NOME AS NOME,
cp.FANTASIA_APELIDO AS FANTASIA,
cp.CNPJ_CPF AS CNPJ_CNPF,
cp.IE_RG AS IE_RG,
cp.ENDERECO_LOGRADOURO AS ENDERECO,
cp.ENDERECO_NUMERO AS NUMERO,
cp.ENDERECO_COMPLEMENTO AS COMPLEMENTO,
cp.ENDERECO_CEP AS CEP,
cp.ENDERECO_BAIRRO AS BAIRRO,
`CID`.`CIDADE` as CIDADE,
`cad_unidade_federacao`.`SIGLA` AS UF,
cp.telefone as TELEFONE,
CP.`TELEFONE_AUXILIAR` AS CELULAR,
`CPE`.`EMAIL` AS EMAIL
FROM `cad_parceiro_negocio` as cp
LEFT JOIN `cad_cidade`CID on cid.`ID_CIDADE` = cp.`ENDERECO_CIDADE`
LEFT JOIN `cad_parceiro_negocio_contato`CPE  ON `cp`.`ID_PARCEIRO_NEGOCIO` = `CPE`.`ID_PARCEIRO_NEGOCIO`
LEFT JOIN `cad_unidade_federacao` ON cad_unidade_federacao.COD_UF = CID.`COD_UF`
WHERE CP.`TIPO` = '1'  -- CLIENTES
