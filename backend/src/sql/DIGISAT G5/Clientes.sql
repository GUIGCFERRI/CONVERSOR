SELECT
                         P.ID AS CODIGO,
                         CAST(P.DATAINCLUSAO AS DATE) AS CADASTRO,
                         substring(P.NOME from 1 for 40) as nome,
                         SUBSTRING (P.OBSERVACAO FROM 1 FOR 1000) AS OBSERVACOES,
                         substring(F.NOMEPAI from 1 for 40) AS PAI,
                         substring(F.NOMEMAE from 1 for 40) AS MAE,
                         CAST(F.DATANASCIMENTO AS DATE) AS NASCIMENTO,
                         F.CONJUGE,
                         J.NOMEFANTASIA AS FANTASIA,
                         case when d.numero = '' or d.numero is null then dc.numero else d.numero END AS CNPJ_CNPF,
                         case when Dr.NUMERO = '' or Dr.NUMERO is null then Di.NUMERO else Dr.NUMERO END AS IE_RG,
                         J.NOMEDORESPONSAVEL AS CONTATO,
                         E.LOGRADOURO AS ENDERECO,
                         E.COMPLEMENTO,
                         E.NUMERO,
                         E.BAIRRO,
                         E.CEP,
                         M.NOME AS CIDADE,
                         U.SIGLA AS UF,
                         T.NUMERO AS TELEFONE,
                         Tc.NUMERO AS CELULAR,
                         min(substring(enderecoeletronico.endereco from 1 for 60)) as email
                         FROM PESSOA P
                         left join enderecoeletronico on enderecoeletronico.pessoaid = p.id
                         LEFT JOIN FISICA F ON P.FISICAID = F.ID
                         LEFT JOIN JURIDICA J ON P.JURIDICAID = J.ID
                         LEFT JOIN DOCUMENTO D ON P.ID = D.PESSOAID AND D.TIPO = 'Cnpj'
                         LEFT JOIN DOCUMENTO Dc ON P.ID = Dc.PESSOAID AND Dc.TIPO = 'Cpf'
                         LEFT JOIN DOCUMENTO Dr ON P.ID = Dr.PESSOAID AND Dr.TIPO = 'Rg'
                         LEFT JOIN DOCUMENTO Di ON P.ID = Di.PESSOAID AND Di.TIPO = 'Ie'
                         LEFT JOIN ENDERECO E ON P.ID = E.PESSOAID AND E.TIPO = 'Principal'
                         LEFT JOIN MUNICIPIO M ON P.ID = E.PESSOAID AND E.MUNICIPIOID = M.ID
                         LEFT JOIN UF U ON P.ID = E.PESSOAID AND E.MUNICIPIOID = M.ID AND M.UFID = U.ID
                         LEFT JOIN TELEFONE T ON P.ID = T.PESSOAID AND T.TIPO = 'Principal'
                         LEFT JOIN TELEFONE Tc ON P.ID = T.PESSOAID AND T.TIPO = 'Celular'
                         GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21
