SELECT
    TCLIENTE.CLICODIGO AS CODIGO,
    TCLIENTE.CLIRAZAO AS NOME,
    TCLIENTE.CLIFANTASIA AS FANTASIA,
    TCLIENTE.CLIENDERECO AS ENDERECO,
    TCLIENTE.CLIBAIRRO AS BAIRRO,
    TCIDADE.CIDNOME AS CIDADE,
    TESTADO.estsigla AS UF,
    TCLIENTE.CLICEP AS CEP,
    TCLIENTE.CLIFONE AS TELEFONE,
    TCLIENTE.CLIFAX AS FAX,
    TCLIENTE.CLICELULAR AS CELULAR,
    TCLIENTE.CLIEMAIL AS EMAIL,
    case when TCLIENTE.CLICPF = '' or TCLIENTE.CLICPF is null then TCLIENTE.CLICNPJ else TCLIENTE.CLICPF END AS CNPJ_CNPF,
    case when TCLIENTE.CLIRG = '' or TCLIENTE.CLIRG is null then TCLIENTE.CLIIE else TCLIENTE.CLIRG END AS IE_RG,
    TCLIENTE.CLIIM AS IM,
    TCLIENTE.CLIOBS AS OBSERVACOES
FROM TCLIENTE
LEFT JOIN TCIDADE ON TCIDADE.cidcodigo = TCLIENTE.CLICIDADE
LEFT JOIN TESTADO ON TESTADO.estcodigo = TCIDADE.cidestado
WHERE TCLIENTE.CLIDATACAD IS NOT NULL and TCLIENTE.CLICODIGO > '0' AND CLIPESSOA = 'J'
