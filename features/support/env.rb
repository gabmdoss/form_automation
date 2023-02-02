require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'cucumber'
require 'faker'
require 'pry'
require 'pry-byebug'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 30)
 end

RSpec.configure do |config| 
  config.include Capybara::DSL  
  config.include Capybara::RSpecMatchers
end

Capybara.configure do |config|
  # digo que o driver padrao eh o do selenium.
  config.default_driver = :selenium 
  # defino o tempo maximo de espera para os elementos.
  config.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
end

