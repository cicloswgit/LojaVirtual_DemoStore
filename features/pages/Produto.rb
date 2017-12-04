
class Produto
  include Capybara::DSL
  
  def adicionar_produto_carrinho
    page.has_selector?(:css, '.ty-btn__add-to-cart')
    click_button('Adicionar ao carrinho')
  end
  
  def detalhar_compra
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    find(".cm-notification-close.close").click
  end
  
  def ver_carrinho
    icone_carrinho = find('#sw_dropdown_8 > a > i', visible: false)
    scroll_to(icone_carrinho)
    icone_carrinho.click
    
    page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    find('div.cm-cart-buttons  > div.ty-float-left').click
  end
end