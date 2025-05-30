SELECT
    "Parceiros"."ID" as codigo,
    "Parceiros"."Nome" as nome,
    "Parceiros"."Documento1" as cnpj_cnpf,
    "Parceiros"."Documento2" as ie_RG,
    "Enderecos"."Endereco",
    "Enderecos"."Numero", 
    "Enderecos"."Complemento",
    "Enderecos"."CEP",
    "Enderecos"."Bairro",
    "Cidades"."Nome" as cidade,
    "Cidades"."UF"

FROM "Parceiros"
LEFT JOIN "EnderecosParceiros" ON "Parceiros"."Codigo" = "EnderecosParceiros"."IdParceiro"
LEFT JOIN "Enderecos" ON "EnderecosParceiros"."IdEndereco" = "Enderecos"."Codigo"
LEFT JOIN "Cidades" ON "Enderecos"."IdCidade" = "Cidades"."ID"