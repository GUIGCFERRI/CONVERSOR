SELECT
    C.CLI_CODIGO_ID AS CODIGO,
    C.CLI_NOME AS NOME,
    C.CLI_NOME_FANTASIA AS FANTASIA,           
    C.CLI_CONTATO AS CONTATO,
    C.CLI_CPF AS CNPJ_CNPF,
    C.CLI_RG AS IE_RG,
    C.CLI_ENDERECO AS ENDERECO,
    C.CLI_COMPLEMENTO AS COMPLEMENTO,
    C.CLI_NUMERO AS NUMERO,
    C.CLI_BAIRRO AS BAIRRO,
    CD.CID_NOME AS CIDADE,
    CD.CID_UF AS UF,
    C.CLI_CEP AS CEP,
    C.CLI_FONE1 AS TELEFONE,
    C.CLI_CELULAR AS CELULAR,
    C.CLI_FAX AS FAX,
    C.CLI_EMAIL AS EMAIL,
    C.CLI_ENDERECO_FAT AS COB_ENDERECO,  
    C.CLI_COMPLEMENTO_FAT AS COB_COMPLEMENTO,  
    C.CLI_NUMERO_FAT AS COB_NUMERO,       
    C.CLI_BAIRRO_FAT AS COB_BAIRRO,  
    CD.CID_NOME AS COB_CIDADE,
    CD.CID_UF AS COD_UF,   
    C.CLI_CEP_FAT AS COB_CEP,         
    C.CLI_NOME_PAI AS PAI,
    C.CLI_NOME_MAE AS MAE,
    C.CLI_NOME_CONJUGE AS CONJUGE,            
    C.CLI_EST_CIVIL AS EST_CIVIL,
    C.CLI_NATURALIDADE AS NATURALIDADE,     
    C.CLI_SEXO AS SEXO,
    --C.CLI_OBS AS OBSERVACOES,
    C.CLI_VEICULO_CHASSI,
    C.CLI_VEICULO_RENAVAM,
    VEM.VEM_DESCRICAO AS MARCA,
    VEMD.VEM_DESCRICAO AS MODELO,
    C.CLI_MATRICULA,
    'CHASSI: ' ||C.CLI_VEICULO_CHASSI ||' / '||'RENAVAM:--'|| C.CLI_VEICULO_RENAVAM ||' / '||'MARCA:--'|| VEM.VEM_DESCRICAO ||' / '|| 'MODELO:--'|| VEMD.VEM_DESCRICAO ||' / '|| 'PLACA:--'|| C.CLI_VEICULO_PLACA AS OBSERVACOES,
    case C.CLI_SITUACAO when 'A' then 'Ativo' else 'Inativo' end AS SITUACAO
FROM CLIENTES AS C
LEFT JOIN CIDADES CD ON C.CLI_CIDADES_ID = CD.CID_CODIGO_ID
LEFT JOIN VEICULOS_MARCAS VEM ON C.CLI_VEICULO_MARCAS_ID = VEM.VEM_CODIGO_ID
LEFT JOIN VEICULOS_MODELOS VEMD ON C.CLI_VEICULO_MODELO_ID = VEMD.VEM_CODIGO_ID