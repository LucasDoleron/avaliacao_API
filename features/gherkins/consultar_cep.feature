# language:pt

Funcionalidade: Consultar_CEP_API_ViaCEP
  Como uma aplicacao de APIs de consulta
  Quero utilizar a API ViaCEP
  Para validar seu funcionamento

  @Consultar_CEP_API_ViaCEP
  Esquema do Cenário: Validar consulta de CEP na API ViaCEP
    Dado que tenho os dados necessarios para consulta na API ViaCEP
      | resultado | <resultado> |
      | cenario   | <cenario>   |
      | cep       | <cep>       |
    Quando executar a API de consulta ViaCEP
    Então devo validar o retorno esperado para a consulta

    Exemplos:
      | resultado | cenario         | cep       |
      | positivo  | cep_valido      | 05339000  |
      | positivo  | cep_inexistente | 06020199  |
      | negativo  | cep_invalido    | 05339-000 |
      | negativo  | cep_invalido    | 950100100 |
      | negativo  | cep_invalido    | 95010A10  |
      | negativo  | cep_vazio       |           |
