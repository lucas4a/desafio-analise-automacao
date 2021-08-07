Dado("que esteja na página de login") do
  @login_page.load
end

Quando("preencho meus dados cadastrais") do
  @login_page.preencherDados('lucas.siqueira.araujo@hotmail.com', 'testeteste')
end

Quando("preencho meus dados cadastrais incorretamente") do
  @login_page.preencherDados('teste@email.com', '123456789')
end

E("clico em fazer login") do
  @login_page.clicarLogin()
end

Então("devo logar no sistema") do
  expect(@account_page.account).to have_content 'Lucas Siqueira'
end

Então("o sistema deve informar o erro") do
  expect(@login_page.alert_message_authentication_failed).to have_content 'Authentication failed.'
end
