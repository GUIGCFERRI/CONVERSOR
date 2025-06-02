SELECT cadcliente.`Codigo`,
cadcliente.`Razao` AS NOME,
cadcliente.`Endereco`,
cadcliente.`Complemento`,
cadcliente.`Numero`,
cadcliente.`Cidade`,
cadcliente.`Estado` AS UF,
cadcliente.`Cnpj` AS CNPJ_CNPF,
cadcliente.IE AS IE_RG,
cadcliente.`EMAIL`,
cadcliente.`FONE` AS TELEFONE,
cadcliente.`FONE2` AS CELULAR,
cadcliente.`Bairro`,
cadcliente.`Cep`
FROM cadcliente

