require 'spec_helper'

describe XMLBuilder do
	describe 'array to xml converter' do
		it "should accept no arguments" do
			array_converter = XMLBuilder.new

			expect(array_converter.main_array).to eq(nil)
		end

		it "should accept an array as an argument" do
			array_to_convert = ["field_001","field_002","field_003","field_004"]
			array_converter = XMLBuilder.new(main_array: array_to_convert)

			expect(array_converter.main_array).to eq(array_to_convert)
		end

		it "should return the XML for a blank form when passed no argument" do
			array_converter = XMLBuilder.new
			
			expect(array_converter.build_xml).to eq(%{<SmartFormConfig><Sections><Section><Title count="0">field_0</Title><FriendName>My Form</FriendName><Order>0</Order><HeaderHTML>My Form</HeaderHTML><Label>Welcome to my form...</Label></Section></Sections><ContactFields></ContactFields><Segmentation></Segmentation><BespokeFields></BespokeFields><ContactFieldFlags></ContactFieldFlags></SmartFormConfig>})
		end

		it "should return the XML for a for with section fields when passed an array of sections" do
			array_to_convert = ["field_001","field_010","field_100"]
			array_converter = XMLBuilder.new(section_array: array_to_convert)
			
			expect(array_converter.build_xml).to eq(%{<SmartFormConfig><Sections><Section><Title count="0">field_0</Title><FriendName>My Form</FriendName><Order>0</Order><HeaderHTML>My Form</HeaderHTML><Label>Welcome to my form...</Label></Section><Section><Title>field_001</Title><FriendName>Section 1</FriendName><Order>1</Order><HeaderHTML>Section 1</HeaderHTML></Section><Section><Title>field_010</Title><FriendName>Section 2</FriendName><Order>2</Order><HeaderHTML>Section 2</HeaderHTML></Section><Section><Title>field_100</Title><FriendName>Section 3</FriendName><Order>3</Order><HeaderHTML>Section 3</HeaderHTML></Section></Sections><ContactFields></ContactFields><Segmentation></Segmentation><BespokeFields></BespokeFields><ContactFieldFlags></ContactFieldFlags></SmartFormConfig>})
		end
	end
end