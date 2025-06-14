SELECT
--p.PARCEIROS_CODIGO AS CODIGO,
p.PARCEIROS_ANIVERSARIO AS NASCIMENTO,
p.PARCEIROS_DESDE AS CADASTRO,
p.PARCEIROS_CNPJ_CPF AS CNPJ_CNPF,
p.PARCEIROS_IESTADUAL AS IE_RG,
p.PARCEIROS_IMUNICIPAL AS IM,
p.PARCEIROS_NOME AS NOME,
p.PARCEIROS_FANTASIA AS FANTASIA,
p.PARCEIROS_OBSERVACAO_GERAL AS OBSERVACOES,
C.cidades_nome AS CIDADE,
E.estados_sigla AS UF,
p.PARCEIROS_END_CEP AS CEP,
p.PARCEIROS_END_ENDERECO AS ENDERECO,
p.PARCEIROS_END_NUMERO AS NUMERO,
p.PARCEIROS_END_COMPLEMENTO AS COMPLEMENTO,
p.BAIRROS_NOME AS BAIRRO,
p.PARCEIROS_NOME_PAI AS PAI,
p.PARCEIROS_NOME_MAE AS MAE,
p.PARCEIROS_NOME_CONJUGE AS CONJUGE,
p.PARCEIROS_SEXO AS SEXO
FROM PARCEIROS p
left join CIDADES C ON C.cidades_controle = P.cidades_controle
left join estados E ON E.estados_controle = P.estados_controle
WHERE P.PARCEIROS_CLIENTE = 'S'
