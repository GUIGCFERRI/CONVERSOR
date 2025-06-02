select
  c.Chave as codigo,
  c.Nome as nome,
  c.Nome_Fantasia as fantasia,
  c.Cnpj_Cpf as cnpj_cnpf,
  c.Rg_Ie as ie_rg,
  c.Inscricao_Municipal as im,
  pe.Endereco as endereco,
  pe.Numero as numero,
  pe.Complemento as complemento,
  pe.bairro as bairro,
  pe.Cidade_Descricao as cidade,
  pe.Cep as cep,
  pe.UF as uf,
  c.Fone as telefone,
  c.Limite as limite_credito,
  c.Estado_Civil as est_civil,
  c.Sexo as sexo,
  cast(c.Inclusao as date) as cadastro,
  cast(c.Nascimento_Abertura as date) as nascimento,
  case when c.Inativo = '0' then 'Ativo' else 'Inativo' end as SITUACAO
from pessoas as c
left join pessoas_enderecos pe on c.Chave = pe.chave_pessoa
where c.Categoria <> '11000000' -- CLIENTES
