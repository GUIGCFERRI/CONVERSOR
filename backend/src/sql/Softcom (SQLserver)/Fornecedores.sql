SELECT 
  f.Codigo
, f.Razao AS NOME
, f.Fantasia
, f.CNPJ AS CNPJ_CNPF
, f.IEstadual AS IE_RG
, f.IMunicipal AS IM
, f.Endereco
, f.Numero
, f.Complemento
, f.Bairro
--, f.Cidade
, m.Descricao AS CIDADE
, uf.Sigla AS UF
, f.CEP
, f.Telefone
, f.FAX
, f.Celular
, f.Email
, f.Observacoes
, f.Contato
FROM Automacao.dbo.acFornecedores f
left join acUFs uf on uf.Internal = f.UF_ID  
left join acMunicipios m on m.Internal = f.Municipio_ID 