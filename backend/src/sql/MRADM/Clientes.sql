SELECT
  CLIENTES.REGISTRO AS CODIGO,
  CLIENTES.NOME AS NOME,
  CLIENTES.APELIDO AS FANTASIA,
  CLIENTES.DATA AS CADASTRO,
  CLIENTES.CPFCNPJ AS CNPJ_CNPF,
  case when CLIENTES.RG_INSC_EST = '' or CLIENTES.RG_INSC_EST is null then CLIENTES.IDENTIDADE else CLIENTES.RG_INSC_EST END as IE_RG,
  CLIENTES.ENDERECO AS ENDERECO,
  CLIENTES.NUMERO AS NUMERO,
  CLIENTES.BAIRRO AS BAIRRO,
  CLIENTES.CIDADE AS CIDADE,
  CLIENTES.ESTADO AS UF,
  CLIENTES.CEP AS CEP,
  CLIENTES.EMAIL AS EMAIL,
  CLIENTES.TELEFONERES AS TELEFONE,
  CLIENTES.TELEFONECEL AS CELULAR,
  CLIENTES.DATANASC AS NASCIMENTO,
  CLIENTES.LIMITECRED AS LIMITE_CREDITO,
  CLIENTES.OBS AS OBSERVACOES,
  CLIENTES.NOMEPAI AS PAI,
  CLIENTES.NOMEMAE AS MAE
FROM CLIENTES
