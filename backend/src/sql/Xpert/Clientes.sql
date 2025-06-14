SELECT 
  E.ID_ENTIDADE AS CODIGO
, E.NOMEENTIDADE AS NOME
, E.RAZAOSOCIALENTIDADE AS FANTASIA
, CAST (COALESCE(E.DTACADASTRO, GETDATE()) AS DATE) AS CADASTRO
, E.ENDERECO
, E.NUMERO
, E.BAIRRO
, E.CEP
, E.CNPJCPF AS CNPJ_CNPF
, E.IERG AS IE_RG
, E.FONE AS TELEFONE
, E.CELULAR
, E.FAX
, E.EMAIL
, E.DIAVCTO AS DIA_DE_ACERTO
, CAST (E.DTANASCIMENTO AS DATE) AS NASCIMENTO
, E.LIMITE AS LIMITE_CREDITO
, E.CARENCIA AS PRAZO_CARENCIA
, E.CONTATO
, E.OBS AS OBSERVACOES
, CASE 
	WHEN E.ATIVO = '1' THEN 'Ativo' 
	WHEN E.ATIVO = '0' THEN 'Inativo' 
  		END AS SITUACAO
, E.NOMEMAE AS MAE
, E.NOMEPAI AS PAI
, CASE 
	WHEN E.TIPO_CONTRIBUINTE = '1' THEN 'C' 
	WHEN E.TIPO_CONTRIBUINTE = '2' THEN 'I' 
	WHEN E.TIPO_CONTRIBUINTE = '9' THEN 'N' 
  		END AS INDIEDEST
, CASE 
	WHEN E.SEXO = '1' THEN 'F' 
	WHEN E.SEXO = '0' THEN 'M' 
  		END AS SEXO
, C.NOMECIDADE AS CIDADE 
, C.UF 
FROM ENTIDADES E
LEFT JOIN CIDADES C ON C.ID_CIDADES = E.ID_CIDADES
WHERE E.CLIENTE_FORNECEDOR = 0 
