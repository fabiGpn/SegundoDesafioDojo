#make the require gems stay in memory
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'

#Capybara driver Configuration
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Web Driver Defaeult
Capybara.default_driver = :selenium
#Browser Waiting time
Capybara.default_max_wait_time = 10
#Open Browser in maximize resolution
Capybara.page.driver.browser.manage.window.maximize


