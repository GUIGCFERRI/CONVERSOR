SELECT 
  p.Pro_CodPro AS codigo,
  p.Pro_CodPro AS cod_fabricante,
  g.Gru_DesGru AS grupo,
  p.pro_despro AS descricao,
  p.Pro_CodUnd AS UND,
  (
    SELECT pse.Pse_SldAtu
    FROM srfpse pse
    WHERE pse.Pse_PtrReg = p.Pro_PtrReg
    LIMIT 1
  ) AS qtd,
  p.Pro_CodNcm AS cod_ncm,
  p.Pro_Codces AS Personal6,
  p.pro_LogReg AS observacoes
FROM srfpro p
LEFT JOIN srfgru g ON p.Pro_CodGru = g.Gru_CodGru;