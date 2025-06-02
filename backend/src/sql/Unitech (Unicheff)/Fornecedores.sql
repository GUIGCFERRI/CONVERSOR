SELECT 
  c.ID as CODIGO
, c.Nome
, c.CPF as CNPJ_CNPF
, c.RG as IE_RG
, c.DataCad as CADASTRO
, c.DataNasc as NASCIMENTO
, c.NomePai as PAI
, c.NomeMae as MAE
, c.Endereco
, c.Numero
, c.Perimetro as COMPLEMENTO
, c.Bairro
, c.CEP
, ci.nome as CIDADE
, ci.uf 
, c.Telefone
, c.Contato
, c.Celular
, c.Fax
, c.Email
, c.TaxaEntrega as PERSONAL1
, c.TipoFornecedor
FROM clientes c
left join cidades ci on ci.id = c.Cidade
where TipoFornecedor = 'True'
