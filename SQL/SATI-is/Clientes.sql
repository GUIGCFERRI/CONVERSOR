SELECT
    CLIENTE.codcliente AS CODIGO,
    CLIENTE.nome,
    CLIENTE.endereco,
    CLIENTE.complemento,
    CLIENTE.cep,
    CIDADE.NOME AS CIDADE,
    CIDADE.UF AS UF,
    CLIENTE.cgccpf AS CNPJ_CNPF,
    CLIENTE.inscricaoestadual AS IE_RG,
    CLIENTE.fone AS TELEFONE,
    CLIENTE.fax,
    CLIENTE.email,
    CLIENTE.celular,
    CLIENTE.datainclusao AS CADASTRO
    FROM cliente
LEFT JOIN CIDADE ON CLIENTE.CODCIDADE = CIDADE.CODCIDADE 
	where CLIENTE.CODCLIENTE > 0
