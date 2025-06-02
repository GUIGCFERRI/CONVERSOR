SELECT 
    TRANSPORTADORA.codtransportadora AS CODIGO,
    cidade.nomecidade as CIDADE,
    cidade.uf as UF,
    TRANSPORTADORA.nometransportadora AS RAZAO_SOCIAL,
    TRANSPORTADORA.telefone AS TELEFONE,
    TRANSPORTADORA.endereco AS ENDERECO,
    TRANSPORTADORA.cnpjcpf AS CNPJ,
    TRANSPORTADORA.incricaoestadualrg AS IE,
    TRANSPORTADORA.email AS EMAIL
FROM TRANSPORTADORA
left join cidade on transportadora.codcidade=cidade.codcidade;
