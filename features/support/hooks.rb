
Before do
  Capybara.register_driver :selenium do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        "chromeOptions" => { "args" => [ "--start-maximized"]}
        )
    Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})    
  end
  
  @Home = Home.new
  @Produto = Produto.new
  @Carrinho = Carrinho.new
end

After do |scenario|
  Capybara.reset_sessions!
end
