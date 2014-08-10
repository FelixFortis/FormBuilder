require 'capybara/rspec'
require 'rubygems'
require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end