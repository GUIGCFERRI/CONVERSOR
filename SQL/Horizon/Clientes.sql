SELECT 
    c.CLI01_COD as CODIGO
  , c.Cliente as NOME
  , c.NomeFantasia as FANTASIA
  , case when c.CPF = '' or c.CPF is null then c.CNPJ else c.CPF END AS CNPJ_CNPF
  , case when c.RG = '' or c.RG is null then c.InscrEstadual else c.RG END AS IE_RG 
  , c.DataNasc as NASCIMENTO
  , c.Endereco
  , c.Numero
  , c.Bairro
  , c.Cidade
  , left (c.Estado,2) as UF
  , c.CEP
  , c.Telefone
  , c.Celular
  , c.Email
  , c.PessoaContato as CONTATO
  , c.UltimaCompra as ULTIMA_VENDA
--  , c.DataCadastro as CADASTRO
FROM cli01 c
