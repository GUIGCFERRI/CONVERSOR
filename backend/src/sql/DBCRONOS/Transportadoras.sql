SELECT
       IdTransportador AS CODIGO
      ,NomeTransportador AS RAZAO_SOCIAL
      ,EnderecoTransportador AS ENDERECO
      ,CidadeTransportador AS CIDADE
      ,UFTransportador AS UF
      ,TelefoneTransportador AS TELEFONE
      ,CPFCGCTransportador AS CNPJ
      ,IETransportador AS IE
      ,PlacaVeiculo AS PLACA
      ,UFPlacaVeiculo AS UFV
      ,CodANTT AS RNTRC
  FROM dbcronos.dbo.Transportador
