	SELECT
	P.RAZAOSOCIAL RAZAO_SOCIAL,
	P.CNPJ_CPF AS CNPJ,
	P.EMAIL AS EMAIL,
	P.TELEFONE AS TELEFONE,
	PE.Logradouro AS ENDERECO,
	PE.Municipio AS CIDADE,
	PE.UF AS UF
FROM PESSOA P
	LEFT JOIN PessoaEndereco PE ON PE.idPessoa = P.idPessoa
	RIGHT JOIN PessoaTransportadora pt on pt.idPessoa = p.idPessoa 
