SELECT `cad_clientes`.ID AS CODIGO,
`cad_clientes`.`nome_cliente` AS NOME,
`cad_clientes`.CEP,
`cad_clientes`.`endereco`,
`cad_clientes`.BAIRRO,
`cad_clientes`.`cidade`,
`cad_clientes`.`uf`,
`cad_clientes`.`email`,
`cad_clientes`.`telefone`,
`cad_clientes`.`celular`,
`cad_clientes`.`cpf_cnpj` AS CNPJ_CNPF,
`cad_clientes`.`rg_ie` AS IE_RG
-- `cad_clientes`.`data_cadastro` AS CADASTRO
FROM `cad_clientes`

