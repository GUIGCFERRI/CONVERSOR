SELECT 
  p.ID as CODIGO
, p.NomeRazaoSocial as NOME
, p.ApelidoFantasia as FANTASIA
, p.CpfCnpj as CNPJ_CNPF
, p.RgIe as IE_RG
, p.InscricaoMunicipal as IM
, p.Bairro
, p.Logradouro as ENDERECO
, p.Cep
, p.PontoReferencia as COMPLEMENTO
-- , p.Complemento
, p.Numero
, pc.Descricao as CIDADE
, pe.UF 
, p.Telefone2 as PERSONAL2
, p.Telefone1 as TELEFONE
, p.Fax
, p.Celular
, p.Contato1 as CONTATO
, p.Email
, p.Observacao as OBSERVACOES
, p.EmailNFe as EMAIL
FROM Pessoas_Pessoa p
LEFT JOIN Pessoas_Cidades pc on pc.ID = p.CidadeID
LEFT JOIN Pessoas_Cidades pcc on pcc.ID = p.CidadeCobrancaID
LEFT JOIN Pessoas_Estados pe on pe.ID = pc.EstadoID 
LEFT JOIN Pessoas_Estados pec on pec.ID = p.EstadoCobrancaID 
WHERE FlagFornecedor = '1'
