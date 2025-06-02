SELECT
  c.Cod AS CODIGO,
  c.Descricao AS NOME,
  c.NomeFantasia AS FANTASIA,
  NULL AS CONTATO,
  ISNULL(c.CNPJ, c.CPF) AS CNPJ_CNPF,
  ISNULL(c.InscricaoEstadual, c.RG) AS IE_RG,
  c.InscricaoMunicipal AS IM,
  c.Endereco AS ENDERECO,
  c.EnderecoNumero AS NUMERO,
  c.EnderecoComplemento AS COMPLEMENTO,
  c.Bairro AS BAIRRO,
  c.CodCidade AS ID_MUNICIPIO,
  cid.descricao AS CIDADE,
  cid.UF AS UF,
  c.Cep AS CEP,
  t.Telefone AS TELEFONE,
  t.Celular AS CELULAR,
  NULL AS FAX,
  c.Email AS EMAIL,
  c.RendaMensal AS RENDA,
  c.LimiteCredito AS LIMITE_CREDITO,
  CAST(c.DataCadastro AS DATE) AS CADASTRO,
  c.Observacao AS OBSERVACOES,
  c.DataNascimento AS NASCIMENTO,
  CASE WHEN c.Ativo = 1 THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO,
  c.Profissao AS PROFISSAO
FROM [DB1Clic].[dbo].[TAB_Cliente] c
LEFT JOIN (
    SELECT
      CodCliente,
      MAX(CASE 
            WHEN 
              (LEN(cleaned_num) = 10 OR LEN(cleaned_num) = 11)
              AND SUBSTRING(cleaned_num, 3, 1) <> '9'
            THEN cleaned_num
          END) AS Telefone,
      MAX(CASE 
            WHEN 
              (LEN(cleaned_num) = 10 OR LEN(cleaned_num) = 11)
              AND SUBSTRING(cleaned_num, 3, 1) = '9'
            THEN cleaned_num
          END) AS Celular
    FROM (
        SELECT
          CodCliente,
          REPLACE(REPLACE(REPLACE(REPLACE(Telefone, '(', ''), ')', ''), '-', ''), ' ', '') AS cleaned_num
        FROM [DB1Clic].[dbo].[TAB_ClienteTelefone]
        WHERE Telefone IS NOT NULL
    ) AS sub
    GROUP BY CodCliente
) t ON t.CodCliente = c.Cod
LEFT JOIN [DB1Clic].[dbo].[TAB_Cidade] cid ON cid.Cod = c.CodCidade
WHERE c.Cliente = 1 AND c.Fornecedor = 0 ----CLIENTES
