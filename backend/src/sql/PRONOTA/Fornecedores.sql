select
  f.id as codigo,
  f.razaoSocial as nome,
  f.nome as fantasia,
  f.cnpjCpf as cnpj_cnpf,
  f.inscricaoEstadual as ie_rg,
  f.inscricaoMunicipal as im,
  ce.endereco as endereco,
  ce.numero as numero,
  ce.complemento as complemento,
  ce.bairro as bairro,
  ce.cep as cep,
  cm.descricao as cidade,
  cuf.uf as uf,
  concat(cc.ddd, '' , cc.telefone) as telefone,  
  concat(cc.dddCelular, '' , cc.celular) as celular,  
  cc.email as email,
  f.observacao as observacoes,
  case when f.inativo = 'N' then 'Ativo' else 'Inativo' end as situacao
from cad_fornecedor as f
left join cad_endereco ce on f.id = ce.cad_fornecedor_id
left join cad_municipio cm on ce.cad_municipio_id = cm.id
left join cad_estado cuf on cm.cad_estado_id = cuf.id
left join cad_contato cc on f.id = cc.cad_fornecedor_id