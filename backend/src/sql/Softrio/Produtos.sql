select 
srfpro.Pro_CodPro as codigo,
-- srfpro.Pvp_KeyPro as cod_fabricante,
srfpro.pro_despro as descricao,
srfpro.Pro_CodUnd as UND,
srfpro.Pro_ObsPro as observacoes,
srfpro.Pro_PesBru as peso,
srfpro.Pro_DatCad as DATA_CADASTRO,
srfpro.Pro_CodNcm as cod_ncm,
srfpro.Pro_CodTps as ippt,
srfpro.Pro_Codces as Personal6,
srfpro.Pro_CodAnp as COD_ANP,
srfpro.Pro_DiasVl as VALIDADE_DIAS,
srfgru.Gru_DesGru as grupo,
(select srfpse.Pse_SldAtu from srfpse where srfpro.Pro_KeyPro=srfpse.Pse_KeyPro order by srfpse.Pse_UltAtu limit 1) as qtd,
(select srfpse.Pse_QtdMin from srfpse where srfpro.Pro_KeyPro=srfpse.Pse_KeyPro order by srfpse.Pse_UltAtu limit 1) as qtd_ideal,
srfpvp.Pvp_PcoVen as preco_venda,
srfpvp.Pvp_MarLuc as MARGEM_LUCRO,
srfmrc.Mrc_DesMrc as familia,
srfcdp.Cdp_RefPro as cod_fabricante,
Srfctp.Ctp_CusCmp as PRECO_CUSTO,
Srfctp.Ctp_CusMdc as CUSTO_MEDIO,
max(srfcdp.Cdp_CodBar) as barras,
substr(srfpfn.Pfn_CodStb from 1 for 1) as ost,
substr(srfpfn.Pfn_CodStb from 2 for 3) as st
from srfpro
left join srfgru on srfpro.Pro_CodGru=srfgru.Gru_CodGru
left join srfpse on srfpro.Pro_KeyPro=srfpse.Pse_KeyPro and srfpse.Pse_CodCdp = '000001'
left join srfpvp on srfpro.Pro_KeyPro=srfpvp.Pvp_KeyPro and srfpvp.Pvp_CodTpv = '01'
left join srfcdp on srfpro.Pro_KeyPro=srfcdp.Cdp_KeyPro
left join srfpfn on srfpro.Pro_CodNcm=srfpfn.Pfn_CodNcm
left join srfpfp on srfpfp.Pfp_KeyPro = srfpro.Pro_KeyPro
left join srfmrc on srfmrc.Mrc_CodMrc = srfpro.Pro_CodMrc
left join Srfctp on Srfctp.Ctp_KeyPro = srfpro.Pro_KeyPro
where srfpro.Pro_CodPro<> '000000' and srfpro.Pro_CodPro <> 'COLUNA'
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20