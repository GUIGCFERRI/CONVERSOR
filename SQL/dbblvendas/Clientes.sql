select
  clientes.codigo,
  clientes.nome,
  clientes.nome_fantasia as fantasia,
  clientes.endereco,
  clientes.bairro,
  cidade.nome as cidade,
  estado.uf,
  clientes.cep,
  clientes.telefone
  from clientes
  left join cidade on clientes.cod_cidade = cidade.codigo
  left join estado on cidade.fk_cod_estado = estado.codigo