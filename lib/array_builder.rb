class ArrayBuilder
  attr_reader :range_to_build
  def initialize(args={})
    @range_to_build = args[:range]
  end
end