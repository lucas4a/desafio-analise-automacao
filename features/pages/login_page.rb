module Pages
  class LoginPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, ''
    element  :input_create_account_email, ''
    element  :btn_create_an_account, ''
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd'
    element  :link_forgot_password, ''
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, '.alert-danger'

    def preencherDados(email, senha)
      input_login_email.set(email)
      input_login_password.set(senha)
    end

    def clicarLogin()
      btn_sign_in.click
    end
  end
end
