Given /^the following statuses:$/ do |statuses|
  Status.create!(statuses.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) status$/ do |pos|
  visit statuses_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Ta bort"
  end
end

Then /^I should see the following status_lists:$/ do |expected_statuses_table|
  expected_statuses_table.diff!(tableish('table tr', 'td,th'))
end
