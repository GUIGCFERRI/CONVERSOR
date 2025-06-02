SELECT
  id as codigo,
  cli_fone as telefone,
  cli_email as email,
  concat ((coalesce (cliente.cli_cnpj,'')), (coalesce (cliente.cli_cpf,''))) as cnpj_cnpf,
  cli_nome as nome,
  cli_cep as cep,
  cli_rua as endereco,
  cli_bairro as bairro,
  cli_complemento as complemento,
  concat ((coalesce (cli_rg,'')), (COALESCE(cli_ie,''))) as ie_rg,
  cli_pai as pai,
  cli_mae as mae,
  cli_cel as celular,
  cli_numero as numero,
  cli_observacao as observacoes,
  cli_contato as contato
FROM CLIENTE
