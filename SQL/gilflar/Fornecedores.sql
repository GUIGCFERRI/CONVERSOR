select
  tbfornec.codigo  as codigo,
  tbfornec.cpf_cnpj as cnpj_cnpf,
  tbfornec.insc_est as ie_rg,
  tbfornec.insc_muni as im,
  tbfornec.razao_social as nome,
  tbfornec.nome_fantasia as fantasia,
  min(tbfornec_contato.nome) as contato,
  tbfornec_end.endereco as endereco,
  tbfornec_end.numero as numero,
  tbfornec_end.complemento as complemento,
  tbfornec_end.bairro as bairro,
  tbmunicipio.nome as cidade,
  min(tbfornec_end.uf) as uf,
  tbfornec_end.cep as cep,
  tbfornec_contato.fone as telefone,
  tbfornec_contato.fax as fax,
  tbfornec_contato.celular as celular,
  tbfornec_contato.email as email,
  tbfornec.obs as observacoes
from tbfornec
left join tbfornec_contato on tbfornec_contato.cod_fornec = tbfornec.codigo
left join tbfornec_end on tbfornec_end.cod_fornec = tbfornec.codigo
left join tbmunicipio on tbmunicipio.codigo = tbfornec_end.cidade
where tbfornec_contato.codigo = '1'
group by 1,2,3,4,5,6,8,9,10,11,12,14,15,16,17,18,19
