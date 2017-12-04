
Given("que eu acesso o site Demo Store") do
  @Home.navegar ''
  page.driver.browser.save_screenshot('screenshot_total.png', 'PNG')
  @produtos = Array.new {}
end

Given("informo a busca {string}") do |pesquisa|
  @produtos[@produtos.size+1] = pesquisa  
  @Home.preencher_busca pesquisa
end

When("eu clico na acao Pesquisar") do
  @Home.pesquisar
end

When("seleciono o produto desejado para Adicionar ao Carrinho") do
  @Home.selecionar_produto
  @Produto.adicionar_produto_carrinho
end

Then("eu visualizo o resumo das compras") do
  @Produto.detalhar_compra
end

Given("eu clico na acao Carrinho > Ver Carrinho") do
  @Produto.ver_carrinho
end

Then("sou direcionado para o carrinho de compras") do
  @Carrinho.validar_tela_carrinho
end

Then("visualizo os produtos selecionados na lista de compras") do
  @Carrinho.validar_produtos @produtos
end

Then("visualizo o total de {float}") do |total|
  @Carrinho.validar_total total
end
