
Quando("clicado em 'Add to cart'") do
  @home_page.execute_script '$(".product-container").trigger("mouseover")'
  @home_page.products.first.add_to_cart.click
end

Então("deve ser adicionado o produto no carrinho") do
  expect(@home_page.modal_cart).to have_content(/^Product successfully added to your shopping cart/)
end
