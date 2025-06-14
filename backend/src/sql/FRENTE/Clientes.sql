SELECT
  CLIENTES.CLI_COD_A AS CODIGO,
  CLIENTES.CLI_NOME_A AS NOME,
  CLIENTES.CLI_RSOCIAL_A AS FANTASIA,
  CLIENTES.TELEFONE AS TELEFONE,
  CLIENTES.FAX AS FAX,
  CLIENTES.ENDERECO AS ENDERECO,
  CLIENTES.BAIRRO AS BAIRRO,
  CLIENTES.CIDADE AS CIDADE,
  CLIENTES.ESTADO AS UF,
  CLIENTES.CEP AS CEP,
  CLIENTES.CONTATO AS CONTATO,
  case when clientes.cgc = '' then clientes.cpf else clientes.cgc end as cnpj_cnpf,
  case when clientes.identidade = '' then clientes.inscest else clientes.identidade end as ie_rg,
  CLIENTES.DTNASC AS NASCIMENTO,
  CLIENTES."NATURAL" AS NATURALIDADE,
  CLIENTES.ESTCIVIL AS EST_CIVIL,
  CLIENTES.CONJUGE AS CONJUGE,
  CLIENTES.PAI AS PAI,
  CLIENTES.MAE AS MAE,
  CLIENTES.VALCRED AS LIMITE_CREDITO,
  CLIENTES.EMAIL AS EMAIL,
  CLIENTES.CELULAR AS CELULAR,
  CLIENTES.NUMERO_ENDERECO AS NUMERO,
  CLIENTES.OBSERVACAO AS OBSERVACOES,
  CLIENTES.PROFISSAO AS PROFISSAO
FROM CLIENTES
