SELECT
  c.cod_clientes AS CODIGO,
  c.nome AS NOME,
  c.apelido AS FANTASIA,
  cc.contato AS CONTATO,
  c.cpfcnpj AS CNPJ_CNPF,
  c.rgie AS IE_RG,
  c.im AS IM,
  c.logr AS ENDERECO,
  c.num AS NUMERO,
  c.compl AS COMPLEMENTO,
  c.bair AS BAIRRO,
  c.cidade AS CIDADE,
  c.uf AS UF,
  c.cep AS CEP,
  CONCAT(cc.ddd1, cc.telefone1) AS TELEFONE,
  CONCAT(cc.ddd2, cc.telefone2) AS CELULAR,
  cc.email AS EMAIL,
  c.limcred AS LIMITE_CREDITO,
  c.obs AS OBSERVACOES,
  c.estadocivil AS EST_CIVIL,
  c.nomepai AS PAI,
  c.nomemae AS MAE,
  c.naturalidade AS NATURALIDADE
FROM
  public.clientes c
LEFT JOIN (
  SELECT DISTINCT ON (cod_clientes) *
  FROM public.clientes_contatos
  ORDER BY cod_clientes, contato
) cc ON cc.cod_clientes = c.cod_clientes;