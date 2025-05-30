select
  p.CPFCNPJ as CNPJ_CNPF
, p.RAZAOSOCIAL as NOME
, p.NOMEFANTASIA AS FANTASIA
, p.LOGRADOURO AS ENDERECO
, p.NUMERO
, p.COMPLEMENTO
, p.CEP
, case when p.RG = '' or p.RG is null then p.IE else p.RG END AS IE_RG
, p.IM
, p.FONE as TELEFONE
, p.FAX
, p.CELULAR
, p.CONTATO
, p.EMAIL
, p.NOMEBAIRRO AS BAIRRO
, p.NOMECIDADE AS CIDADE
, p.UF
, p.OBSERVACOES
from pessoa p
LEFT JOIN pessoas_tipos pt on pt.idpessoa = p.idpessoa
where pt.idtipopessoa = 2
