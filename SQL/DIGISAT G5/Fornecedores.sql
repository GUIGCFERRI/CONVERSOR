SELECT
                         P.ID AS CODIGO,
                         P.NOME,
                         SUBSTRING (P.OBSERVACAO FROM 1 FOR 1000) AS OBSERVACOES,
                         J.NOMEFANTASIA AS FANTASIA,
                         J.NOMEDORESPONSAVEL AS CONTATO,
                         case when d.numero = '' or d.numero is null then dc.numero else d.numero END AS CNPJ_CNPF,
                         Di.NUMERO AS IE_RG,
                         E.LOGRADOURO AS ENDERECO,
                         E.COMPLEMENTO,
                         E.NUMERO,
                         E.BAIRRO,
                         E.CEP,
                         M.NOME AS CIDADE,
                         U.SIGLA AS UF,
                         T.NUMERO AS TELEFONE,
                         Tc.NUMERO AS CELULAR,
                         MIN(substring(ee.endereco from 1 for 60))as email
                         FROM PESSOA P
                         LEFT JOIN FISICA F ON P.FISICAID = F.ID
                         LEFT JOIN enderecoeletronico ee ON ee.pessoaid = p.id
                         LEFT JOIN JURIDICA J ON P.JURIDICAID = J.ID
                         LEFT JOIN DOCUMENTO D ON P.ID = D.PESSOAID AND D.TIPO = 'Cnpj'
                         LEFT JOIN DOCUMENTO Dc ON P.ID = Dc.PESSOAID AND Dc.TIPO = 'Cpf'
                         LEFT JOIN DOCUMENTO Di ON P.ID = Di.PESSOAID AND Di.TIPO = 'Ie' or Di.TIPO = 'Rg'
                         LEFT JOIN ENDERECO E ON P.ID = E.PESSOAID
                         LEFT JOIN MUNICIPIO M ON P.ID = E.PESSOAID AND E.MUNICIPIOID = M.ID
                         LEFT JOIN UF U ON P.ID = E.PESSOAID AND E.MUNICIPIOID = M.ID AND M.UFID = U.ID
                         LEFT JOIN TELEFONE T ON P.ID = T.PESSOAID AND T.TIPO = 'Principal'
                         LEFT JOIN TELEFONE Tc ON P.ID = Tc.PESSOAID AND Tc.TIPO = 'Celular'
                         WHERE P.FORNECEDORID IS NOT NULL
                         GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
