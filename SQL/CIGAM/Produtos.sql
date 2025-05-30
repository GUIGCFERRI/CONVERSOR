select ESGRUPO.Descricao as Grupo,
  ESMATERI.Cd_material as cod_fabricante,
 ESMATERI.Descricao,
 ESMATERI.Cd_unidade_vend as und,
 ESMATERI.Classificacao_f as cod_ncm
from ESMATERI
left join ESGRUPO on ESMATERI.Cd_grupo = ESGRUPO.Cd_grupo
where ESMATERI.Descricao <> ''

