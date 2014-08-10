require 'spec_helper'

describe ArrayBuilder do
  describe 'all_fields array converter' do
    it "should accept a range" do
      range_to_build = (1..10)
      ArrayBuilder.new(range: range_to_build)
    end
  end
end