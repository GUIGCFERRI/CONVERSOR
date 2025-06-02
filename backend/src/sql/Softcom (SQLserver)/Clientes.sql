SELECT 
  c.CodigoCliente as CODIGO
, c.Razao AS NOME
, c.Fantasia
, c.CNPJ AS CNPJ_CNPF
, c.IEstadual AS IE_RG
, c.IMunicipal AS IM
, c.Endereco
, c.Numero
, c.Complemento
, c.Bairro
--, c.Cidade
, m.Descricao as MUNICIPIO
, uf.Sigla AS UF
, c.CEP
, c.Telefone
, c.FAX
, c.Celular
, c.Email
, c.Observacoes
, c.ValorLimiteCredito AS LIMITE_CREDITO
, c.EnderecoCobranca AS COB_ENDERECO
, c.NumeroCobranca AS COB_NUMERO
, c.ComplementoCobranca AS COB_COMPLEMENTO
, c.BairroCobranca AS COB_BAIRRO
, c.CidadeCobranca AS COB_CIDADE
, ufc.Sigla AS COB_UF
, c.CEPCobranca AS COB_CEP
, c.DataInsert AS CADASTRO
, c.DataNascimento AS NASCIMENTO
FROM Automacao.dbo.acClientes c
left join acUFs uf on uf.Internal = c.UF_ID 
left join acUFs ufc on ufc.Internal = c.UF_IDCobranca 
left join acMunicipios m on m.Internal = c.Municipio_ID 