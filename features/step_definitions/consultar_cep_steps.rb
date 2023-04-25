Dado('que tenho os dados necessarios para consulta na API ViaCEP') do |dados|

    @table = dados.rows_hash
    @url = "https://viacep.com.br/ws/#{@table['cep']}/json/"
    @headers = {'content-type': 'application/json'}
end

Quando('executar a API de consulta ViaCEP') do

    @response = HTTParty.get(@url, :headers => @headers)
end

Então('devo validar o retorno esperado para a consulta') do

    if @table['resultado'].eql? 'positivo'
        expect(@response.response.code).eql? '200'
        expect(@response.response.message).to eql 'OK'
        if @table['cenario'].eql? 'cep_valido'
            expect(@response['cep']).to eql DATABASE[:response][:cep]
            expect(@response['logradouro']).to eql DATABASE[:response][:logradouro]
            expect(@response['complemento']).to eql DATABASE[:response][:complemento]
            expect(@response['bairro']).to eql DATABASE[:response][:bairro]
            expect(@response['localidade']).to eql DATABASE[:response][:localidade]
            expect(@response['uf']).to eql DATABASE[:response][:uf]
            expect(@response['ibge']).to eql DATABASE[:response][:ibge]
            expect(@response['gia']).to eql DATABASE[:response][:gia]
            expect(@response['ddd']).to eql DATABASE[:response][:ddd]
            expect(@response['siafi']).to eql DATABASE[:response][:siafi]
        else
            expect(@response['erro']).to be true
        end
    else
        expect(@response.response.code).eql? '400'
        expect(@response.response.message).eql? 'Bad Request'
    end
end
