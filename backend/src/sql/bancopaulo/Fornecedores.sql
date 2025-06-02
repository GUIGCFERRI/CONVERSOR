select ger_ter.`IDTerceiro` as codigo,
ger_ter.`Nome`,
ger_ter.`Fantasia`,
ger_ter.`Contato`,
ger_ter.`Endereco`,
ger_ter.`Numero`,
ger_ter.`Complemento`,
`ger_ter`.`Bairro`,
ger_ter.cep,
ger_ter.`Cidade`,
ger_ter.uf,
ger_ter.`Telefone1` as telefone,
ger_ter.`CPFCGC` as cnpj_cnpf,
ger_ter.`InscEst` as ie_rg
from ger_ter
where ger_ter.`IDTipoTer`=1

