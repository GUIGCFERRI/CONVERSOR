SELECT 
  c.codigo
, c.CPF_CGC as CNPJ_CNPF
, c.RG_INSC_ESTADUAL as IE_RG
, c.nome_razaosocial as NOME
, c.nome_fantasia as FANTASIA
, c.endereco
, c.bairro
, c.cidade
, c.ESTADO as UF
, c.numero
, c.CEP
, c.endereco_cobranca as COB_ENDERECO
, c.bairro_cobranca as COB_BAIRRO
, c.cidade_cobranca as COB_CIDADE
, c.ESTADO_COBRANCA as COB_UF
, c.CEP_COBRANCA as COB_CEP
, c.DATA_NASCIMENTO_FUNDACAO as NASCIMENTO
, c.FONE as TELEFONE
, c.NOME_PAI as PAI
, c.NOME_MAE as MAE
, c.NOME_CONJUGE as CONJUGE
, c.LIMITE_CREDITO
, c.observacao as OBSERVACOES
, c.data_cadastro as CADASTRO
, c.celular
, c.email
, c.fax
FROM clientes c
