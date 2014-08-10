Given(/^a list of generated Dim gfields$/) do
  pending
  fields = %{Dim gfield_005
Dim gfield_006
Dim gfield_007
Dim gfield_008
Dim gfield_009
Dim gfield_010
Dim gfield_011
Dim gfield_012}
end

When(/^they are converted$/) do
  pending
  build_it = ArrayBuilder.new(fields)
  all_fields = build_it.build_all_fields_array
end

Then(/^the main array should be returned$/) do
  pending
  all_fields == ["Dim gfield_005", "Dim gfield_006", "Dim gfield_007", "Dim gfield_008", "Dim gfield_009", "Dim gfield_010", "Dim gfield_011", "Dim gfield_012",]
end