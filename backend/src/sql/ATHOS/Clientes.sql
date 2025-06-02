SELECT
    c.idcliente AS CODIGO,
    -- Verifica se � cliente f�sico ou jur�dico e pega o nome/raz�o social
    COALESCE(cf.nome, cj.razaosocial) AS NOME,
    --c.fantasia AS FANTASIA,
    c.telefoneempresa AS TELEFONE,
    ce.cidade AS CIDADE,
    ce.bairro AS BAIRRO,
    ce.logradouro AS ENDERECO,
    ce.numero AS NUMERO,
    ce.complemento AS COMPLEMENTO,
    ce.cep AS CEP,
    ce.uf AS UF,
    --ce.codigocidade AS ID_MUNICIPIO,
    
    -- Verifica o CPF/RG (cliente f�sico) ou CNPJ/IE (cliente jur�dico)
    COALESCE(cf.cpf, cj.cnpj) AS CNPJ_CNPF,
    COALESCE(cf.rg, cj.ie) AS IE_RG,

    --c.suframa AS SUFRAMA,
    c.limitecredito AS LIMITE_CREDITO,
    c.datacadastro AS CADASTRO,
    c.obs1cliente AS OBSERVACOES

FROM
    cliente c
LEFT JOIN cliente_grupo cg ON c.idgrupocliente = cg.idgrupocliente
LEFT JOIN funcionario f ON c.idfuncionario = f.idfuncionario
LEFT JOIN setorcliente sc ON c.idsetorcliente = sc.idsetorcliente

-- Documento (ex: CNPJ/CPF)
LEFT JOIN LATERAL (
    SELECT cd.*
    FROM cliente_doc cd
    WHERE cd.idcliente = c.idcliente
    ORDER BY cd.idclientedoc ASC
    LIMIT 1
) cd ON true

-- Endere�o principal
LEFT JOIN LATERAL (
    SELECT ce.*
    FROM cliente_endereco ce
    WHERE ce.idcliente = c.idcliente AND ce.tipoendereco = 1
    ORDER BY ce.idenderecocliente ASC
    LIMIT 1
) ce ON true

-- Nome do cliente da tabela cliente_fisico
LEFT JOIN cliente_fisico cf ON c.idcliente = cf.idcliente

-- Nome do cliente da tabela cliente_juridico
LEFT JOIN cliente_juridico cj ON c.idcliente = cj.idcliente;