select
	mv.idmercadoriavariacao as codigo,
    (m.descricao::text || ' '::text) || mv.descricao::text AS descricao,
	mv.referencia as cod_fabricante,
    mv.codigobarras as barras,
    m.ncm as cod_ncm,	
  	CASE
		m.flaginativo when 'T' THEN 'Inativo'
		ELSE 'Ativo'
	END AS situacao,
    m.cest as personal6,
    m.qtddiasvalidade as VALIDADE_DIAS,
    mg.descricao AS grupo,
    ms.descricao AS familia,
    mv.marca as caracteristicas,
    mv.embalagem as und,
    COALESCE(mv.dtcadastro::date, CURRENT_DATE) as DATA_CADASTRO,
    mv.codigoanp as COD_ANP,
    mv.cor,
    mv.estoqueminimo as QTD_IDEAL,
    mv.idorigem as ost,
    mes.qtdsaldo as qtd,
    preco.valpreco AS PRECO_VENDA,
    mcv.valcusto as PRECO_CUSTO,
    mcv.valcustomedio as CUSTO_MEDIO,
    mve.percomissao as comissao
   FROM mercadoria m
     JOIN mercadoria_variacao mv ON m.idmercadoria = mv.idmercadoria
     JOIN mercadoria_variacao_empresa mve ON mve.idmercadoria = mv.idmercadoria AND mve.idmercadoriavariacao = mv.idmercadoriavariacao
     JOIN LATERAL uf_getprecomercadoria(mve.idempresa, mv.idmercadoria, mv.idmercadoriavariacao, 0) preco(idempresa, idmercadoria, idmercadoriavariacao, valpreco, idtabela) ON preco.idempresa = mve.idempresa AND preco.idmercadoria = mv.idmercadoria AND preco.idmercadoriavariacao = mv.idmercadoriavariacao
     JOIN mercadoria_grupo mg ON mg.idgrupo = m.idgrupo
     JOIN mercadoria_subgrupo ms ON ms.idgrupo = m.idgrupo AND ms.idsubgrupo = m.idsubgrupo
     left join mercadoria_estoque mes on mes.idmercadoriavariacao = mv.idmercadoriavariacao
     left join mercadoria_custo_view mcv on mcv.idmercadoriavariacao = mv.idmercadoriavariacao
