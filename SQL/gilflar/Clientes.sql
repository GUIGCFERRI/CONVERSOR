select
  tbcliente.codigo  as codigo,
  tbcliente.cpf_cnpj as cnpj_cnpf,
  tbcliente.insc_est as ie_rg,
  tbcliente.insc_muni as im,
  tbcliente.razao_social as nome,
  tbcliente.nome_fantasia as fantasia,
  min(tbcliente_contato.nome) as contato,
  min(tbcliente_end.endereco) as endereco,
  tbcliente_end.numero as numero,
  tbcliente_end.complemento as complemento,
  tbcliente_end.bairro as bairro,
  tbmunicipio.nome as cidade,
  tbcliente_end.uf as uf,
  tbcliente_end.cep as cep,
  tbcliente_contato.fone as telefone,
  tbcliente_contato.fax as fax,
  tbcliente_contato.celular as celular,
  tbcliente_contato.email as email,
  tbcliente_contato.dt_nascimento as nascimento,
  tbcliente.obs as observacoes,
  tbcliente.limite_credito as limite_credito
  ##tbcliente.dt_cadastro as cadastro
from tbcliente
left join tbcliente_contato on tbcliente_contato.cod_cliente = tbcliente.codigo
left join tbcliente_end on tbcliente_end.cod_cliente = tbcliente.codigo
left join tbmunicipio on tbmunicipio.codigo = tbcliente_end.cidade
where tbcliente_contato.codigo = '1'
group by 1,2,3,4,5,6,9,10,11,12,13,14,15,16,17,18,19,20,21
