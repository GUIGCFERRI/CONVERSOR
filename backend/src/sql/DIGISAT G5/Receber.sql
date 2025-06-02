select
                    pagarreceber.numero||'/'||pagarreceber.ordem||'-'||pagarreceber.pessoaid as documento
                  , 'Parc.' ||pagarreceber.ordem|| 'do Doc N. '||pagarreceber.numero as historico
                  , pagarreceber.pessoaid as cod_cliente
                  , substring(pessoa.nome from 1 for 60) as nom_cliente
                  , cast(pagarreceber.datainclusao as date) as emissao
                  , cast(pagarreceber.vencimento as date) as vencimento
                  , pagarreceber.valor as valor_dup
                  , cast(historicopagarreceber.datainclusao as date) as recebimento
                  , historicopagarreceber.valor as valor_rec
                  , historicopagarreceber.juro as valor_jur
                  , case when historicopagarreceber.tiporeajuste='Desconto' then historicopagarreceber.descontoacrescimo else '0' end as valor_des
                  , especiepagamento.descricao as especie
                  , pagarreceber.ordem as num_parcela
                  , pagarreceber.historico as observacoes
                  , documento.numero as cnpj
                  from pagarreceber
                  join pessoa on pessoa.id = pagarreceber.pessoaid
                  left join historicopagarreceber on historicopagarreceber.id = pagarreceber.historicopagarreceberid
                  LEFT JOIN DOCUMENTO ON PESSOA.ID = DOCUMENTO.PESSOAID AND DOCUMENTO.TIPO = 'Cnpj'
                  left join especiepagamento on especiepagamento.id = pagarreceber.especiepagamentoid where pagarreceber.tipo = 'Receber' and pagarreceber.ativo=1 and pagarreceber.situacao<>'Aguardando'
                  order by 1
