SELECT
    codcli AS CODIGO,
    nomcli AS NOME,
    procli AS FANTASIA,
    endcli AS ENDERECO,
    baicli AS BAIRRO,
    muncli AS CIDADE,
    estcli AS UF,
    cepcli AS CEP,
    cpfcli AS CNPJ_CPF, -- Usa direto o CPF, se não houver CNPJ
    rgcli AS IE_RG,
    email AS EMAIL,
    celcli AS TELEFONE,
    foncli AS CELULAR,
    faxcli AS FAX,
    numend AS NUMERO
FROM 
    public.arqcli;
