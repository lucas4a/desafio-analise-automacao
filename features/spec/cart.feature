# language: pt

Funcionalidade: Carrinho no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria utilizar o carrinho de compras
  Para personalizar minhas compras

  Contexto:
    Dado que esteja na página inicial

  @adicionar_no_carrinho
  Cenário: Adicionar no produto no carrinho
    Quando clicado em 'Add to cart'
    Então deve ser adicionado o produto no carrinho
