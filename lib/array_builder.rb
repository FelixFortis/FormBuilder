require_relative '../requirements_handler'

class ArrayBuilder
	attr_reader :range_to_build, :first_percent_field, :section_fields
	def initialize(args={})
		@range_to_build = args[:range_to_build]
		@first_percent_field = args[:first_percent_field]
		@section_fields = args[:section_fields]
	end

	def array_to_build
		range_to_build.to_a
	end

	def format_array(array)
		unless array.nil?
			array.collect do |field|
				field.to_s.rjust(3,"0").prepend("field_")
			end
		end
	end

	def get_all_fields_array
		format_array(array_to_build)
	end

	def get_percent_fields_array
		count = first_percent_field
		stop = array_to_build.size
		basic_percent_array = []

		while count <= stop do
			basic_percent_array << count
			count += 3
		end

		format_array(basic_percent_array)
	end

	def get_section_fields_array
		format_array(section_fields)
	end
end