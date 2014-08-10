require_relative '../requirements_handler'

class ArrayBuilder
  attr_reader :range_to_build
  def initialize(args={})
    @range_to_build = args[:numbers]
  end

  def build_all_fields_array
    @range_to_build = @range_to_build.to_a
    unless @range_to_build.nil?
      @all_fields = @range_to_build.collect do |field|
        field.to_s.rjust(3,"0").prepend("field_")
      end
    end
  end
end