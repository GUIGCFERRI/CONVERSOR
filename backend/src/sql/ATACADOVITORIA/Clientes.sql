select Clientes.Codigo,
Clientes.Descricao as nome,
Clientes.Observacao,
Clientes.[Filiacao Pai] as pai,
Clientes.[Filiacao Mae] as mae,
SUBSTRING( Clientes.[Cpf ou Cgc],1,18) as CNPJ_CNPF,
substring (Clientes.[Rg ou Inscricao Estadual],1,20) AS IE_RG,
Clientes.Endereco,
Clientes.Perimetro AS COMPLEMENTO,
Clientes.Bairro,
Clientes.Cep,
Clientes.Cidade,
Clientes.Estado AS UF,
Clientes.Fone AS TELEFONE,
Clientes.Celular,
Clientes.Email,
Clientes.[Endereco Cobranca] AS COB_ENDERECO,
Clientes.[Bairro Cobranca] AS COB_BAIRRO,
Clientes.[Cidade Cobranca] AS COB_CIDADE,
Clientes.[estado Cobranca] AS COB_UF,
Clientes.Contato,
Clientes.Numero
FROM Clientes










