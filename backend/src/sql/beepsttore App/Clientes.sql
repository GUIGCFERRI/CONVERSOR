select
  C.ID as codigo
  ,C.CADASTRO
  ,C.RAZAO as nome
  ,C.CNPJ as cnpj_cnpf
  ,C.IE as IE_RG
  ,C.FANTASIA
  ,pf.fone as telefone
  ,pe.email
  ,C.CEP
  ,ib.nome_cidade as cidade
  ,ib.uf
  ,C.BAIRRO
  ,C.LOGRADOURO AS ENDERECO
  ,C.NUMERO
  ,C.NOME_CONTATO AS CONTATO
  ,C.CREDITO_LIMITE AS LIMITE_CREDITO
  ,C.OBS AS OBSERVACOES
FROM PESSOAS C
LEFT JOIN pessoas_fone pf on pf.id = c.id_fone
left join pessoas_email pe on pe.id = c.id_email
left join ibge ib on ib.id_cidade = c.id_ibge
where c.relacao = 'Cliente'
