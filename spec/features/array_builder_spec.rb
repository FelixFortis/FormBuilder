require 'spec_helper'

describe ArrayBuilder do
  describe 'all_fields array converter' do
    it "should accept a range" do
      range_to_build = (1..10)
      range_handler = ArrayBuilder.new(numbers: range_to_build)

      expect(range_handler.range_to_build).to eq(1..10)
    end

    it "should accept no range arguements" do
      range_handler = ArrayBuilder.new

      expect(range_handler.range_to_build).to eq(nil)
    end

    it "should convert an empty range into an empty array" do
      range_handler = ArrayBuilder.new
      converted = range_handler.build_all_fields_array

      expect(converted).to eq([])
    end

    it "should convert the range into the all_fields array" do
      range_to_build = (1..10)
      range_handler = ArrayBuilder.new(numbers: range_to_build)
      converted = range_handler.build_all_fields_array

      expect(converted).to eq(["field_001", "field_002", "field_003", "field_004", "field_005", "field_006", "field_007", "field_008", "field_009", "field_010"])
    end
  end
end