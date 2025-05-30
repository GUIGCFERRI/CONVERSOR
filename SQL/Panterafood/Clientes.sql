select
  p.cd AS CODIGO,
  p.nm_razao AS NOME,
  p.nm_fantasia AS FANTASIA,
  p.email AS email,
  p.cpf AS CNPJ_CNPF,
  p.ie AS ie_RG,
  group_concat(n.num separator ',') AS TELEFONE
from
  (pessoa p
  left join fone n on (n.cd_pes = p.cd))
group by
  p.cd
