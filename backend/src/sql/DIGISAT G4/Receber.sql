select
                    RECEBER.numero||RECEBER.ordem as documento
                  , RECEBER.ordem ||' / '|| RECEBER.numero ||' / '||RECEBER.ESPECIE as historico
                  , RECEBER.codigo as cod_cliente
                  , clientes.nome as nom_cliente
                  , cast(RECEBER.EMISSAO as date) as emissao
                  , cast(RECEBER.vencimento as date) as vencimento
                  , RECEBER.valor as valor_dup
                  , RECEBER.RECEBIMENTO as recebimento
                  , RECEBER.VALOR_RECEBIDO as valor_rec
                  , RECEBER.JUROS as valor_jur
                  , RECEBER.DESCONTO AS valor_des
                  , RECEBER.ESPECIE as especie
                  , RECEBER.ordem as num_parcela
                  , RECEBER.historico as observacoes
                  , case when CLIENTES.CPF = '' or CLIENTES.CPF is null then CLIENTES.CNPJ else CLIENTES.CPF END AS CNPJ
                  from RECEBER
                  join clientes on clientes.codigo = RECEBER.codigo
