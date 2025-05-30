SELECT
  e.id_entidade AS CODIGO,
  e.nome AS NOME,
  COALESCE(pj.nome_fantasia, e.apelido) AS FANTASIA,
  c.nome AS CONTATO,
  pf.cpf AS CPF,
  pj.cnpj AS CNPJ,
  COALESCE(pf.rg, pj.ie) AS IE_RG,
  e.logradouro AS ENDERECO,
  e.numero_endereco AS NUMERO,
  e.complemento AS COMPLEMENTO,
  e.bairro AS BAIRRO,
  ci.nome AS CIDADE,
  ci.uf AS UF,
  e.cep AS CEP,
  CONCAT(e.fone1_ddd, e.fone1_numero) AS TELEFONE,
  CONCAT(e.celular_ddd, e.celular_numero) AS CELULAR,
  CONCAT(e.fone_comercial_ddd, e.fone_comercial_numero) AS FAX,
  e.email_principal AS EMAIL,
  NULL AS RENDA,
  e.limite_credito AS LIMITE_CREDITO,
  e.observacao AS OBSERVACOES,
  NULL AS EST_CIVIL,
  pf.nome_pai AS PAI,
  pf.nome_mae AS MAE,
  NULL AS NATURALIDADE,
  NULL AS PROFISSAO,
  NULL AS CONJUGE
FROM [dbo].[entidade] e
LEFT JOIN (
    SELECT ec1.id_entidade, ec1.nome
    FROM [dbo].[entidade_contato] ec1
    WHERE ec1.id_contato = (
        SELECT TOP 1 ec2.id_contato
        FROM [dbo].[entidade_contato] ec2
        WHERE ec2.id_entidade = ec1.id_entidade
        ORDER BY ec2.id_contato
    )
) c ON e.id_entidade = c.id_entidade
LEFT JOIN [dbo].[cidade] ci ON e.id_cidade = ci.id_cidade
LEFT JOIN [dbo].[pessoa_fisica] pf ON e.id_entidade = pf.id_entidade
LEFT JOIN [dbo].[pessoa_juridica] pj ON e.id_entidade = pj.id_entidade
WHERE e.flag_cliente = 1;