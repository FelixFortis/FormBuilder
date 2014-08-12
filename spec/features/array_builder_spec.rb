require 'spec_helper'

describe ArrayBuilder do
  describe 'range to array converter' do
	  it "should accept no arguments" do
      range_handler = ArrayBuilder.new

      expect(range_handler.range_to_build).to eq(nil)
    end
	  
    it "should accept a range" do
      range_to_build = (1..10)
      range_handler = ArrayBuilder.new(range_to_build: range_to_build)

      expect(range_handler.range_to_build).to eq(1..10)
    end

    it "should convert an empty range into an empty array" do
      range_handler = ArrayBuilder.new
      converted = range_handler.build_array

      expect(converted).to eq([])
    end

    it "should convert the range into the all_fields array" do
      range_to_build = (1..10)
      range_handler = ArrayBuilder.new(range_to_build: range_to_build)
      converted = range_handler.get_all_fields_array

      expect(converted).to eq(["field_001", "field_002", "field_003", "field_004", "field_005", "field_006", "field_007", "field_008", "field_009", "field_010"])
    end
      
    it "should convert the range into the percent_fields array" do
      range_to_build = (1..11)
      range_handler = ArrayBuilder.new(range_to_build: range_to_build, first_percent_field: 2)
	  converted = range_handler.get_percent_fields_array

      expect(converted).to eq(["field_002", "field_005", "field_008", "field_011"])
    end
	  
	it "should convert the array into the section fields array" do
	  array_to_build = [1,10,100]
	  array_handler = ArrayBuilder.new(section_fields: array_to_build)
	  converted = array_handler.get_section_fields_array
	  
	  expect(converted).to eq(["field_001", "field_010", "field_100"])
	end
  end
end