SELECT
  srfcli.Cli_CpfCli AS CNPJ_CNPF,
  srfcli.Cli_NomCli AS NOME,
  srfcli.Cli_RzsCli AS FANTASIA,
  srfcli.Cli_EndCli AS ENDERECO,
  srfcli.Cli_NumEnd AS NUMERO,
  srfcli.Cli_CplEnd AS COMPLEMENTO,
  srfcli.Cli_BaiCli AS BAIRRO,
  srfcli.Cli_NomCid AS CIDADE,
  srfcli.Cli_EstCli AS UF,
  srfcli.Cli_CepCli AS CEP,
  srfcli.Cli_Tel001 AS TELEFONE,
  srfcli.Cli_Cel001 AS CELULAR,
  srfcli.Cli_Fax001 AS FAX,
  srfcli.Cli_EmlCli AS EMAIL,
  srfcli.Cli_NomCjg AS CONJUGE,
  srfcli.Cli_NomPai AS PAI,
  srfcli.Cli_NomMae AS MAE
FROM srfcli
