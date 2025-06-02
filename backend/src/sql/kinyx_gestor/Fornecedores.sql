select
  correntista.id as codigo,
  correntista.razao_social as nome,
  correntista.nome_fantasia as fantasia,
  correntista.contato as contato,
  correntista.cpf_cnpj as cnpj_cnpf,
  correntista.rg_ie as ie_rg,
  correntista.inscricao_municipal as im,
  correntista.endereco as endereco,
  correntista.complemento,
  correntista.numero as numero,
  correntista.bairro as bairro,
  correntista.cep as cep,
  cidade.nome as cidade,
  cidade.uf as uf,
  concat(correntista.ddd_telefone, '-' , correntista.telefone) AS TELEFONE,
  concat(correntista.ddd_celular, '-' , correntista.celular) AS CELULAR,  
  correntista.email as email,
  correntista.observacoes
from correntista
left join cidade on cidade.id = correntista.cidade_id
where correntista.razao_social is not null and correntista.fornecedor = '1'