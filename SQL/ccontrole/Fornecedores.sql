select fornecedor.codfornecedor as CODIGO
                  ,fornecedor.razaossocialnome as NOME
                  ,fornecedor.nomefantasia as FANTASIA
                  ,fornecedor.contato as CONTATO
                  ,fornecedor.cep as CEP
                  ,fornecedor.logradouro as ENDERECO
                  ,fornecedor.numero as NUMERO
                  ,cidade.nomecidade as cidade
                  ,cidade.uf
                  ,fornecedor.complemento as complemento
                  ,fornecedor.bairro as bairro
                  ,fornecedor.telefone
                  ,fornecedor.fax
                  ,fornecedor.celular
                  ,fornecedor.inscricaoestadualrg as IE_RG
                  ,fornecedor.email as email
                  ,fornecedor.cnpjcpf as CNPJ_CNPF
                  from fornecedor
                  left join cidade on fornecedor.codcidade=cidade.codcidade;

