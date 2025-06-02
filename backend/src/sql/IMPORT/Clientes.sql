SELECT
       CLIENTEs.CodCli as codigo
      ,CLIENTEs.Cliente as fantasia
      ,CLIENTEs.Razao as nome
      ,CLIENTEs.Endereco as endereco
      ,CLIENTEs.Numero as numero
      ,CLIENTEs.ComplementoEndereco as complemento
      ,CLIENTEs.Bairro as bairro
      ,CLIENTEs.Cidade as cidade
      ,CLIENTEs.Estado as uf
      ,CLIENTEs.Cep as cep
      ,CLIENTEs.Tel as telefone
      ,CLIENTEs.Tel2 as celular
      ,case when CLIENTEs.CPF = '' or CLIENTEs.CPF is null then CLIENTEs.CGC else CLIENTEs.CPF END AS CNPJ_CNPF
      ,case when CLIENTEs.RG = '' or CLIENTEs.RG is null then CLIENTEs.IE else CLIENTEs.RG END AS IE_RG
      ,CLIENTEs.IM as im
     -- ,cast (CLIENTEs.DataCad as date) as cadastro
      ,CLIENTEs.Sexo as sexo
      ,CLIENTEs.Limite as limite_credito
      ,CLIENTEs.FiliacaoPai as pai
      ,CLIENTEs.FiliacaoMae as mae
      ,CLIENTEs.EMail as email
      ,CLIENTEs.Observacao as observacoes
  FROM IMPORT.dbo.CLIENTEs
  where CLIENTEs.CodCli <> '0'
