require 'capybara/rspec'
require 'rubygems'
require 'factory_girl'

require_relative '../lib/array_builder'
require_relative '../lib/xml_builder'

RSpec.configure do |config|
	config.include FactoryGirl::Syntax::Methods
	config.color_enabled = true
end