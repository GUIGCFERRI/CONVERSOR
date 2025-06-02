select
 cast(registro as integer) as codigo,
 nome,
 contato,
 cgc as cnpj_cnpf,
 ie as ie_rg,
 endere as endereco,
 comple as bairro,
 substring(cidade from 1 for 35) as cidade,
 estado as uf,
 cep,
 fone as telefone,
 celular,
 fax,
 email,
 OBS AS observacoes,
 identificador1 as PERSONAL1,
 identificador2 as PERSONAL2,
 identificador3 as PERSONAL3,
 identificador4 as PERSONAL4,
 identificador5 as PERSONAL5,
 WHATSAPP AS PERSONAL6
 from clifor
 where nome <> '''' and nome is not null and clifor = 'Fornecedor'
