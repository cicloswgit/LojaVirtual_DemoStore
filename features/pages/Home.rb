
class Home
  include Capybara::DSL
    
  def navegar(url)
    visit url
  end
  
  def preencher_busca pesquisa
    page.has_selector?(:id, 'search_input')  
    find('#search_input').send_keys(pesquisa)
  end
  
  def pesquisar
    click_button('Pesquisar')
  end
  
  def selecionar_produto
    primeiro_item = find(:css, 'div.grid-list > div:nth-child(1) > div > form > div.ty-grid-list__image > a >  img.ty-pict.cm-image', visible: false) 
    scroll_to(primeiro_item)
    primeiro_item.click
  end
end