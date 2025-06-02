SELECT
       A.CodigoAgente as codigo
      ,A.Razao as nome
      ,A.Fantasia as fantasia
      ,A.Responsavel as contato
      ,A.CNPJ_CPF as cnpj_cnpf
      ,case when A.RG = '' or A.RG is null then A.IE else A.RG END AS IE_RG
      ,A.Endereco as endereco
      ,A.Numero as numero
      ,A.Complemento as complemento
      ,A.Bairro as bairro
      ,C.descricao as cidade
      ,A.UF as uf
      ,replace (replace(A.CEP,'-',''),'.','') as cep 
      ,A.Telefone as telefone
      ,A.Celular as celular
      ,A.Email as email
      ,case when A.Inativo = '0' then 'Ativo' else 'Inativo' end as SITUACAO
      ,A.Observacao as observacoes
  FROM BDEspetinho.dbo.Agentes as A
  left join BDEspetinho.dbo.Tabela_Cidades C on A.IBGE = C.IBGE
  where A.TipoFornecedor = '1' --- FORNECEDORES