SELECT 
    f.idfornecedor AS CODIGO,
    COALESCE(fj.nomefantasia, ff.nome) AS NOME,  -- Nome fantasia (jur�dico) ou nome (f�sico)
    fj.nomefantasia AS FANTASIA,
    -- Para o campo CONTATO, vou pegar da tabela de fornecedor contato se tiver, mas sen�o podemos montar algo aqui
    fc.emailcontato AS CONTATO,  -- Email do contato espec�fico do fornecedor
    -- CNPJ_CNPF e IE_RG v�o depender se for jur�dico ou f�sico
    CASE 
        WHEN fj.cnpj IS NOT NULL THEN fj.cnpj  -- CNPJ se for jur�dico
        ELSE ff.cpf  -- CPF se for f�sico
    END AS CNPJ_CNPF,
    CASE 
        WHEN fj.ie IS NOT NULL THEN fj.ie  -- IE se for jur�dico
        ELSE ff.rg  -- RG se for f�sico
    END AS IE_RG,
    fj.im AS IM,  -- Inscri��o Municipal (jur�dico)
    fe.logradouro AS ENDERECO,
    fe.numero AS NUMERO,
    fe.complemento AS COMPLEMENTO,
    fe.bairro AS BAIRRO,
    fe.cidade AS CIDADE,
    fe.uf AS UF,
    fe.cep AS CEP,
    f.telefoneempresa AS TELEFONE,
    f.dddtelefoneempresa || f.operadoratelefoneempresa AS CELULAR,  -- Se o celular for formado assim
    -- Caso queira fax, podemos substituir ou adicionar conforme necess�rio
    fc.telefone AS FAX,  -- Este campo pode vir de fornecedor_contato
    f.emailfornecedor AS EMAIL,
    f.observacao AS OBSERVACOES
FROM 
    public.fornecedor f
LEFT JOIN public.fornecedor_fisico ff ON ff.idfornecedor = f.idfornecedor
LEFT JOIN public.fornecedor_juridico fj ON fj.idfornecedor = f.idfornecedor
LEFT JOIN public.fornecedor_endereco fe ON fe.idfornecedor = f.idfornecedor
LEFT JOIN public.fornecedor_contato fc ON fc.idfornecedor = f.idfornecedor;