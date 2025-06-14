SELECT PESSOA.CODIGO,
PESSOA.CNPJCPF AS CNPJ_CNPF,
PESSOA.IE AS IE_RG,
PESSOA.NOME,
ENDERECO.ENDERECO,
ENDERECO.CONTATO,
PESSOA.USUAL AS FANTASIA,
PESSOA.NUMERO,
PESSOA.COMPLEMENTO,
PESSOA.BAIRRO,
CIDADE.NOME AS CIDADE,
CIDADE.UF,
PESSOA.CEP,
PESSOA.CONTATO,
PESSOA.CADASTRO,
PESSOA.OBSERVACAO AS OBSERVACOES,
PESSOA.DDD||PESSOA.TELEFONE AS TELEFONE,
PESSOA.EMAIL
FROM PESSOA
LEFT JOIN CIDADE ON PESSOA.CIDADE=CIDADE.CODIGO
LEFT JOIN ENDERECO ON PESSOA.CODIGO=ENDERECO.PESSOA
JOIN CLIENTE ON PESSOA.CODIGO=CLIENTE.PESSOA
