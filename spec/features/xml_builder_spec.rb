require 'spec_helper'

describe XMLBuilder do
  describe 'array to xml converter' do
	it "should accept no arguments" do
	  array_handler = XMLBuilder.new
		
	  expect(array_handler.array).to eq(nil)
	end
	  
	it "should accept an array as an argument" do
	  array_to_convert = ["field_001","field_002","field_003","field_004"]
	  array_handler = XMLBuilder.new(array: array_to_convert)
		
	  expect(array_handler.array).to eq(array_to_convert)
	end
  end
end