select
    "Parceiros"."ID" as codigo,
    "Parceiros"."Nome" as nome,
    "Parceiros"."NomeReduzido" as fantasia, 
    "Parceiros"."Documento1" as cnpj_cnpf,
    "Parceiros"."Documento2" as ie_rg, 
    "Enderecos"."Endereco" as endereco,
    "Enderecos"."Numero" as numero,
    "Enderecos"."Bairro" as bairro,
    "Enderecos"."Complemento" as complemento,
    "Enderecos"."CEP" as cep,
    "Cidades"."Nome" as cidade,
    "Cidades"."UF" as uf,
    "Contatos"."Telefone" as telefone,
    "Contatos"."Fax" as fax,
    "Contatos"."Email" as email,
    "Contatos"."Celular" as celular,
    "Parceiros"."LimiteDeCredito" as limite_credito,
    "Parceiros"."Observacao" as observacoes,
    "Parceiros"."Sexo" as sexo,
    "Parceiros"."DataCriacao" as cadastro,
    "Parceiros"."Tipo",
     case when "Parceiros"."Ativo" = 'true' then 'Ativo' else 'Inativo' end as situacao
from "Parceiros"
left join "EnderecosParceiros" on "EnderecosParceiros"."ID" = "Parceiros"."ID"
left join "Enderecos" on "Enderecos"."ID" = "EnderecosParceiros"."ID" 
left join "Cidades" on "Cidades"."ID" = "Enderecos"."IdCidade"
left join "Contatos" on "Contatos"."Codigo" = "Parceiros"."Codigo"
where "Parceiros"."Tipo" <> '2' ---CLIENTES
order by "Parceiros"."ID" asc
