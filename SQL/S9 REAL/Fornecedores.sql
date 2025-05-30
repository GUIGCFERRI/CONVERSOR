SELECT 
Cli_For.Ordem as codigo,
CIDADES.Cidade,
CIDADES.UF,
CLI_FOR.Nome,
CLI_FOR.Fantasia,
cli_for.cep,
Cli_For.Endereco,
Cli_FOR.NUMERO,
CLI_FOR.Complemento,
Cli_For.Bairro,
Cli_For.Cidade,
Cli_For.Estado AS UF,
CASE WHEN Cli_For.CPF='' THEN Cli_For.CNPJ 
ELSE CLI_FOR.CPF END AS CNPJ_CNPF,
CLI_FOR.Inscricao_Estadual_PF AS IE_RG,
CLI_FOR.Fone_1 AS TELEFONE,
Cli_For.Fone_2 AS CELULAR,
CLI_FOR.Fax,
Cli_For.Comentarios AS OBSERVACOES
FROM S9_Real.dbo.Cli_For
LEFT JOIN S9_Real.dbo.CIDADES ON  Cli_For.Ordem_Cidade=CIDADES.Ordem
WHERE CLI_FOR.Ordem>0 AND Cli_For.Tipo='F'
