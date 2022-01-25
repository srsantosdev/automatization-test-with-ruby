require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require_relative 'page.initialize.rb'
include RSpec::Matchers

World(Page)

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser:  :chrome)
end

Capybara.configure do |config|
  Capybara.default_driver = :site_prism
  config.app_host = 'https://www.linkedin.com/'
  config.default_max_wait_time = 5
end