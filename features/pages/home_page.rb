require_relative 'sections/product.rb'

module Pages
  class HomePage < SitePrism::Page
    set_url '/index.php'

    sections :products, Sections::Product, '.product-container'
    element  :logo, ''
    element  :btn_contact_us, ''
    element  :btn_go_to_sign_in, ''
    element  :input_search_form, '#search_query_top'
    element  :button_search, '.button-search'
    element  :input_newsletter_footer_email, ''
    element  :btn_newsletter_footer_register, ''
    element  :modal_cart, '.layer_cart_product'

    def search(query)
      input_search_form.set(query)
      button_search.click
    end
  end
end
