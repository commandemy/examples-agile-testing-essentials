require File.join(File.dirname(__FILE__), '..', '..', 'app.rb')

require 'capybara/cucumber'

Capybara.app = Blog

