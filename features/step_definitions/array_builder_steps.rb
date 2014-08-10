Given(/^a range of numbers$/) do
  pending
  fields = 1..10
end

When(/^the range is converted into the "all_fields" array$/) do
  pending
  build_it = ArrayBuilder.new(fields)
  all_fields = build_it.build_all_fields_array
end

Then(/^the "all_fields" array should be returned$/) do
  pending
  all_fields == ["field_001", "field_002", "field_003", "field_004", "field_005", "field_006", "field_007", "field_008", "field_009", "field_010"]
end

#numbers_only percent_fields section_fields