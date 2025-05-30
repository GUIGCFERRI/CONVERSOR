select
  c.CD_CLIENTE as codigo
  ,c.NM_FANTASIA_CLIENTE as fantasia
  ,c.CD_CGC_CLIENTE as cnpj_cnpf
  ,c.NM_RAZ_SOC_CLIENTE as nome
  ,c.CD_INSCR_EST_CLIENTE as ie_rg
  ,c.CD_ISNC_MUN_CLIENTE as im
  ,c.DS_END_COM_CLIENTE as endereco
  ,c.DS_COMPLEMENTO as complemento
  ,c.DS_NUMERO as numero
  ,c.DS_DDD_TELEFONE  || c.CD_FONE_CLIENTE as telefone
  ,c.CD_FAX_CLIENTE  as fax
  ,c.CD_CELULAR_CLIENTE as celular
  ,c.DS_EMAIL_CLIENTE as email
  ,c.NM_CONTATO_CLIENTE as contato
  ,c.DT_NASCIMENTO_CLIENTE as nascimento
  ,b.ds_bairro as bairro
  ,cid.ds_cidade as cidade
  ,C.CD_CEP as cep
  ,c.CD_ESTADO as uf
  ,c.DS_TEXTO_CLIENTE as observacoes
  ,c.DS_PAI as pai
  ,c.DS_MAE as mae
from cliente c
LEFT JOIN bairro b on b.cd_bairro = c.cd_bairro
LEFT join cidade cid on cid.cd_cidade = c.cd_cidade
