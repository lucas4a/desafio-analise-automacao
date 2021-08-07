module Pages
  class AccountPage < SitePrism::Page
    set_url '/index.php'

    element :account, '.account'
  end
end
