
class Carrinho
  include Capybara::DSL
  
  def validar_tela_carrinho
    page.has_current_path?("/cart/")
  end
  
  def validar_produtos(produtos)
    scroll_to(find(:css, '.ty-cart-content.ty-table'))
    page.has_content?(produtos[0])
    page.has_content?(produtos[1])
  end
  
  def validar_total(total)
    scroll_to(find(:css, '.ty-cart-statistic__total-list'))
    page.has_content?(total)
  end  
end