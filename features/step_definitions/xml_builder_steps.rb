Given(/^an empty array$/) do
	@required_fields = []
end

When(/^I convert the array into XML$/) do
	build_it = XMLBuilder.new(array: @required_fields) # type: text_radio_text other_field: false, section_breaks: [12, 55, 123]
	@generated_xml = build_it.build_xml
end

Then(/^it should return the XML for an empty form$/) do
	@generated_xml == %{<SmartFormConfig><Sections><Section><Title count="0">field_0</Title><FriendName>My Form</FriendName><Order>0</Order><HeaderHTML>My Form</HeaderHTML><Label>Welcome to my form...</Label></Section></Sections><ContactFields></ContactFields><Segmentation></Segmentation><BespokeFields></BespokeFields><ContactFieldFlags></ContactFieldFlags></SmartFormConfig>}
end