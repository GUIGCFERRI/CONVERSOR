 select
  fornecedores.codigo,
  fornecedores.nome,
  fornecedores.endereco,
  fornecedores.bairro,
  fornecedores.cep,
  fornecedores.telefone,
  cidade.nome as cidade,
  estado.uf,
  fornecedores.nome_fantasia as fantasia,
  fornecedores.cnpj as cnpj_cnpf,
  fornecedores.insc_estad as ie_rg
  from fornecedores
  left join cidade on fornecedores.cod_cidade = cidade.codigo
  left join estado on cidade.fk_cod_estado = estado.codigo