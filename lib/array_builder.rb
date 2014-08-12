require_relative '../requirements_handler'

class ArrayBuilder
  attr_reader :range_to_build
  def initialize(args={})
    @range_to_build = args[:range_to_build]
    @first_percent_field = args[:first_percent_field]
  end
    
  def build_array
    @array_to_build = @range_to_build.to_a
  end

  def format_array
      unless build_array.nil?
      @final_array = build_array.collect do |field|
        field.to_s.rjust(3,"0").prepend("field_")
      end
    end
  end
    
  def get_percent_fields
    
  end
end