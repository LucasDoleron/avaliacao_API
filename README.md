### Automação de cenários para o processo seletivo Opah - RD
- Projeto de automação para os cenários de consulta de CEP
    - Para consulta de CEP foi automatizada a consulta de CEP via API no sistema ViaCEP
        - https://viacep.com.br/

### Responsável
- Lucas José Damasceno D'oleron
- lucasdoleron@gmail.com

### Configuração
- É necessária a instalação do Ruby 2.7.2 ou superior
- Para configuração do projeto é necessário instalar/atualizar as gemas utilizadas e suas dependências
    - Para instalar/atualizar as gemas deve ser seguido o seguinte passo-a-passo
        - Acessar via terminal/prompt o diretório raiz do projeto
        - A instalação/atualização pode ser realizada através dos comandos:
            gem install bundle
            bundle install

### Execução
- Para executar algum cenário/suíte:
    - Acessar via terminal/prompt o diretório raiz do projeto
    - Para execução dos cenários utilizar o comando Cucumber
        Ex: cucumber
    - Caso deseje executar os cenários individualmente utilizar as tags de cenário
        Ex: cucumber -t @exemplo_de_cenario
    - Caso deseje verificar o relatório de reports da execução
        Ex: cucumber -t @exemplo_de_cenario --publish

### Desenvolvimento
- Foi escolhido gherkin para escrita dos cenário com o idioma  portugues para maior entendimento
- Foi utilizada a gema HTTParty para efetuar as requisições nas APIs
- Foi utilizada a gema Rspec para validação dos objetos retornados nas requisições das APIs
- Foi utilizada a gema Pry para debug e teste durante o desenvolvimento dos cenários
- A lista com todas as gemas requeridas no projeto pode ser acessada no arquivo env.rb no diretório features/support/env.rb

- gherkins
    - Foram descritos os cenários de teste utilizando a metodologia BDD
    - Foram utilizados os recursos Esquema do Cenário e Exemplos para garantir uma maior variedade de cenários sem a necessidade de repetição de código

- steps_definition
    - Foram implementadas as etapas descritas no gherkins atendendo os passos necessários para execução e validação dos cenários