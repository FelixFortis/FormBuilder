Given(/^an empty range of numbers$/) do
  required_fields = nil
end

When(/^I convert the range$/) do
  build_it = XMLBuilder.new(range: required_fields) # type: text_radio_text other_field: false
  generated_xml = build_it.build_xml
end

Then(/^I should be given the XML for an empty form$/) do
  generated_xml == %{<SmartFormConfig>
  <Sections>
    <Section>
      <Title count="0">field_0</Title>
      <FriendName>My Form</FriendName>
      <Order>0</Order>
      <HeaderHTML>My Form</HeaderHTML>
      <Label>Welcome to my form...</Label>
    </Section>
  </Sections>
  <ContactFields></ContactFields>
  <Segmentation></Segmentation>
  <BespokeFields></BespokeFields>
  <ContactFieldFlags></ContactFieldFlags>
</SmartFormConfig>}
end