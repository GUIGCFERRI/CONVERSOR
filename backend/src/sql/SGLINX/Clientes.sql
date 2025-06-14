select
  cg1_cod as codigo,
  cg1_nome as nome,
  cg1_fantasia as fantasia,
  cg1_contato as contato,
  case when cg1_cpf = '' or cg1_cpf is null then cg1_cgc else cg1_cpf END AS CNPJ_CNPF,
  case when cg1_rg = '' or cg1_rg is null then cg1_inscestadual else cg1_rg END AS IE_RG,
  cg1_inscmunicipal as im,
  cg1_end as endereco,
  cg1_numero as numero,
  cg1_compl as complemento,
  cg1_bairro as bairro,
  cg1_cep as cep,
  cg1_cidade as cidade,
  cg1_uf as uf,
  cg1_fone as telefone,
  cg1_celular as celular,
  cg1_fax as fax,
  cg1_email as email,
  cg1_pai as pai,
  cg1_mae as mae,
  cg1_observacao as observacoes,
  cg1_natural as naturalidade,
  cg1_profissao as profissao,
  cg1_estcivil as est_civil,
  cg1_nomeconjuge as conjuge,
  cg1_sexo as sexo,
  cg1_limite as limite_credito,
  cg1_data as nascimento,
  cg1_dtcad as cadastro,
  cg1_dataultimavenda as ultima_venda,
  case when cg1_ativo = '1' then 'Ativo' else 'Inativo' end as SITUACAO
from cg1
where cg1_cod > 0
