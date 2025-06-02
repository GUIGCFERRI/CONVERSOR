SELECT
  entidades.Codigo AS CODIGO,
  entidades.Razao AS NOME,
  entidades.Fantasia AS FANTASIA,
  CONCAT (entidades.TipoLogradouro, ' ' ,entidades.Endereco) AS ENDERECO,
  entidades.NumRua AS NUMERO,
  entidades.ComplEnd AS COMPLEMENTO,
  entidades.Bairro AS BAIRRO,
  entidades.Cidade AS CIDADE,
  entidades.Estado AS UF,
  entidades.Cep AS CEP,
  entidades.CGC AS CNPJ_CNPF,
  entidades.Insc_Estadual AS IE_RG,
  entidades.Obs AS OBSERVACOES,
  entidades.E_Mail AS EMAIL,
  CONCAT (entidades.DDD, ' ' ,entidades.Telefone) AS TELEFONE,
  entidades.Data_Cadastro AS CADASTRO,
  entidades.Dt_Aniversario AS NASCIMENTO
FROM entidades