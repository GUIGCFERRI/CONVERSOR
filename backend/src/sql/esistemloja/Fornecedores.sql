SELECT
    pessoa.id AS CODIGO,
    pessoa.nome_razao_social AS NOME,
    pessoa.apelido_nome_fantasia AS FANTASIA,
    endereco.logradouro AS ENDERECO,
    bairro.nome AS BAIRRO,
    cidade.nome AS CIDADE,
    estado.sigla as UF,
    endereco.numero AS NUMERO,
    endereco.complemento AS COMPLEMENTO,
    cep.codigo AS CEP,
    case when pessoa.inscricao_estadual = '' or pessoa.inscricao_estadual is null then pessoa.identidade else     pessoa.inscricao_estadual END AS IE_RG,
    pessoa.cpf_cnpj AS CNPJ_CNPF,
    pessoa.inscricao_municipal AS IM,
    pessoa.observacoes AS OBSERVACOES,
    max (T.numero) AS TELEFONE, 
	max (C.numero) AS CELULAR 
FROM pessoa
LEFT JOIN ENDERECO ON ENDERECO.ID = PESSOA.ID
LEFT JOIN BAIRRO ON BAIRRO.ID = ENDERECO.ID_BAIRRO
LEFT JOIN CIDADE ON CIDADE.ID = ENDERECO.ID_CIDADE
LEFT JOIN CEP ON CEP.ID = ENDERECO.ID_CEP
LEFT JOIN ESTADO ON ESTADO.ID = CIDADE.ID_ESTADO
LEFT JOIN TELEFONE T ON T.ID_CONTATO = PESSOA.ID and T.tipo =0
LEFT JOIN TELEFONE C ON C.ID_CONTATO = PESSOA.ID and C.tipo =1
WHERE PESSOA.TIPO = '0' and PESSOA.id_empresa_cadastro = 2 --- AJUSTAR AQUI O ID DA EMPRESA
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14
