SELECT cliente.codcliente as CODIGO
              ,cliente.razaosocialnome as NOME
              ,cliente.nomefantasia as FANTASIA
              ,cliente.contato as CONTATO
              ,cliente.cep as CEP
              ,cliente.logradouro as ENDERECO
              ,cliente.numero as NUMERO
              ,cliente.complemento as COMPLEMENTO
              ,cliente.bairro as BAIRRO
              ,cidade.nomecidade as CIDADE
              ,cidade.uf as UF
              ,cliente.telefone as TELEFONE
              ,cliente.fax as FAX
              ,cliente.celular as CELULAR
              ,cliente.inscricaoestadualrg as IE_RG 
              ,cliente.email EMAIL
              ,cliente.observacao as OBSERVACOES
              ,case when cliente.datacadastro is null then CURRENT_DATE
                    else cliente.datacadastro end as CADASTRO
              ,cliente.pai as PAI
              ,cliente.mae as MAE
              ,cliente.conjuge as CONJUGE 
              ,cliente.nascimento as NASCIMENTO
              ,cliente.profissao as PROFISSAO
              ,cliente.cnpjcpf as CNPJ_CNPF
              from cliente
              left join cidade on cliente.codcidade=cidade.codcidade;

