select
TBITMERC.cditemmerc as codigo,
TBITMERC.descitemmerc as descricao,
TBITMERC.GTIN as barras,
TBITMERC.unidademerc as und,
TBITMERC.csosn as st,
TBITMERC.cest as personal6,
tbclasfisc.clasfiscal as cod_ncm,
TBMERCEMPRESA.saldoitemmerc as qtd,
TBMERCEMPRESA.customedio as custo_medio,
TBMERCEMPRESA.precocusto as preco_custo,
TBMERCEMPRESA.perclucro as MARGEM_LUCRO,
TBMERCEMPRESA.precounitmerc as preco_venda
from TBITMERC
left join  tbclasfisc on TBITMERC.cdclasfisc= tbclasfisc.cdclasfisc
left join  TBMERCEMPRESA on tbitmerc.cditemmerc = TBMERCEMPRESA.cditemmerc
