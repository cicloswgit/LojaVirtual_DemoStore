require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara-screenshot'

Capybara.configure do |config|
  config.default_max_wait_time = 50 # seconds
  config.default_driver        = :selenium
  config.javascript_driver     = :chrome
  config.run_server            = false
  config.app_host              = 'http://demo.cs-cart.com/'
end
