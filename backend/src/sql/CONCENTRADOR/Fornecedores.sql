SELECT `cadfornecedor`.`Codigo`,
cadfornecedor.`Razao` AS NOME,
cadfornecedor.`Endereco`,
cadfornecedor.CIDADE,
cadfornecedor.`Estado` AS UF,
cadfornecedor.`Cnpj` AS CNPJ_CNPF,
cadfornecedor.`IE` AS IE_RG,
cadfornecedor.`Email`,
cadfornecedor.`Fone` AS TELEFONE,
cadfornecedor.`Fax`,
cadfornecedor.`Bairro`,
cadfornecedor.`Cep`
FROM cadfornecedor
