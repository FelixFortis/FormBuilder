require 'spec_helper'

describe ArrayBuilder do
  describe 'all_fields array converter' do
    it "should accept a range" do
      range_to_build = (1..10)
      range_handler = ArrayBuilder.new(range: range_to_build)
      expect(range_handler.range_to_build).to eq(range_to_build)
    end
    it "should accept no range" do
      range_handler = ArrayBuilder.new
      expect(range_handler.range_to_build).to eq(nil)
    end
  end
end