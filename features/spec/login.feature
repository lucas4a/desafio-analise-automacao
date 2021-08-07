# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce
  Gostaria de poder fazer login no sistema
  Para customizar meu acesso

  Contexto:
    Dado que esteja na página de login

  # Completar o cenário abaixo
  @login_valido
  Cenário: Realizar login
    Quando preencho meus dados cadastrais
    E clico em fazer login
    Então devo logar no sistema

  # Completar o cenário abaixo
  @login_invalido
  Cenário: Login com falha
    Quando preencho meus dados cadastrais incorretamente
    E clico em fazer login
    Então o sistema deve informar o erro
