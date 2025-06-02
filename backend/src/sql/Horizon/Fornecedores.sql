SELECT 
   f.FOR01_COD as CODIGO
 , f.Fornecedor as NOME
 , f.NomeFantasia as FANTASIA
 , case when f.CPF = '' or f.CPF is null then f.CNPJ else f.CPF END AS CNPJ_CNPF
 , case when f.RG = '' or f.RG is null then f.InscrEstadual else f.RG END AS IE_RG 
 , f.Endereco
 , f.Numero
 , f.Bairro
 , f.Cidade
  , left (f.Estado,2) as UF
 , f.CEP
 , f.Telefone
 , f.Celular
 , f.Email 
 , f.PessoaContato as CONTATO
 , f.TelefoneContato as FAX
FROM for01 f
