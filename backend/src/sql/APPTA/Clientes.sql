SELECT 
  c.CLI_Codigo AS CODIGO
, c.CLI_Observacao AS OBSERVACOES
, c.CLI_LimiteCredito AS LIMITE_CREDITO 
, p.PES_DataCadastro AS CADASTRO
, p.PES_Nome AS NOME
, p.PES_RG AS IE_RG
, p.PES_CPF AS CNPJ_CNPF
, p.PES_DataNascimento AS NASCIMENTO 
, p.PES_TelefoneResidencial AS TELEFONE
, p.PES_TeleFoneComercial AS FAX
, p.PES_Celular AS CELULAR 
, p.PES_Email AS EMAIL
, e.END_Logradouro AS ENDERECO
, e.END_Numero AS NUMERO
, e.END_Complemento AS COMPLEMENTO
, e.END_CEP AS CEP
, ci.CID_Nome AS CIDADE
, es.EST_Nome AS UF
FROM APPTA.dbo.CLIENTE c
LEFT JOIN APPTA.dbo.PESSOA p ON p.PES_Id = c.CLI_PES_IdPessoa 
LEFT JOIN APPTA.dbo.ENDERECO e ON e.END_Id = p.PES_END_IdEndereco 
LEFT JOIN APPTA.dbo.CIDADE ci ON ci.CID_Codigo = e.END_CID_IdCidade 
LEFT JOIN APPTA.dbo.ESTADO es ON es.EST_Codigo = e.END_EST_IdEstado
where c.CLI_PES_IdPessoa is not null and p.PES_Ativo = 'S';
