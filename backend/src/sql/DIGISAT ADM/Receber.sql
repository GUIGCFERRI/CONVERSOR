select
  receber.numero||receber.controle||(select count(1) from receber a where a.vencimento <= receber.vencimento and a.numero = receber.numero and a.cli_for = receber.cli_for ) as documento
,(select count(1) from receber a where a.vencimento <= receber.vencimento and a.numero = receber.numero and a.cli_for = receber.cli_for ) as parcela
, receber.numero
, receber.descricao historico
, receber.cli_for as cod_cliente
, substring(cliente.nome from 1 for 60) as nom_cliente
, receber.emissao
, receber.vencimento
, receber.valor as valor_dup
, receber.pagamento
, receber.valor_recebido as valor_rec
, receber.acrescimo as valor_jur
, receber.desconto as valor_des
, receber.especie
, ADM_CLIENTES.cnpj
from receber
left join cliente on cliente.codigo = receber.cli_for
left join ADM_CLIENTES on ADM_CLIENTES.CODIGO = receber.cli_for
order by documento, receber.vencimento;
