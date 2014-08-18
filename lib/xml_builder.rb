class XMLBuilder
	attr_reader :main_array, :section_array
	def initialize(args={})
		@main_array = args[:main_array]
		@section_array = args[:section_array]
	end
	
	def build_xml
		%{<SmartFormConfig><Sections><Section><Title count="0">field_0</Title><FriendName>My Form</FriendName><Order>0</Order><HeaderHTML>My Form</HeaderHTML><Label>Welcome to my form...</Label></Section></Sections><ContactFields></ContactFields><Segmentation></Segmentation><BespokeFields></BespokeFields><ContactFieldFlags></ContactFieldFlags></SmartFormConfig>}
	end
end