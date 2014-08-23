class XMLBuilder
	attr_reader :main_array, :section_array
	def initialize(args={})
		@main_array = args[:main_array]
		@section_array = args[:section_array]
	end
	
	def build_xml
		%{<SmartFormConfig><Sections><Section><Title count="0">field_0</Title><FriendName>My Form</FriendName><Order>0</Order><HeaderHTML>My Form</HeaderHTML><Label>Welcome to my form...</Label></Section>#{sections_xml}</Sections><ContactFields>#{contact_fields_xml}</ContactFields><Segmentation>#{segmentation_xml}</Segmentation><BespokeFields>#{bespoke_fields_xml}</BespokeFields><ContactFieldFlags></ContactFieldFlags></SmartFormConfig>}
	end
	
	def sections_xml
	end
	
	def contact_fields_xml
	end
	
	def segmentation_xml
	end
	
	def bespoke_fields_xml
	end
end