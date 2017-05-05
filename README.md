# [onebitcode_exchange](http://onebitcode-exchange-jonas.herokuapp.com)

![ruby](https://img.shields.io/badge/Ruby-2.3.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[ ![Codeship Status for JonasAzevedo/onebitcode_exchange](https://app.codeship.com/projects/897afb70-124d-0135-4579-0eeb1db01106/status?branch=master)](https://app.codeship.com/projects/217039)


# Sobre

O OneBitCodeExchange é um app web para converter valores de uma moeda para outra.

# Layout da Aplicação

![OneBitCodeExchange](https://raw.githubusercontent.com/JonasAzevedo/onebitcode_exchange/master/public/layout_aplicação.png)

# Dependências

[Fixer API](http://fixer.io/)

# Instalação

* Instale o [Docker](https://docs.docker.com/engine/installation/)
* Clone este repositório
* No diretório que clonou o repositório execute:
  * docker-compose build
  * docker-compose run --rm website rails db:create db:migrate
  * docker-compose up
