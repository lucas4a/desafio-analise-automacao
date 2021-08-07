module Sections
  class Product < SitePrism::Section
    element  :image, '.img-responsive'
    element  :name, '.product-name'
    element  :price, ''
    element  :add_to_cart, '.ajax_add_to_cart_button' 
  end
end
