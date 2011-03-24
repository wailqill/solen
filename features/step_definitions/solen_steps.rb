When /^I look at the page$/ do
  # Do nothing. Empty placeholder
end

Then /^I should see the current date$/ do
  date = I18n.l(Date.today, :format => :long)
  if page.respond_to? :should
    page.should have_xpath('//*', :text => date)
  else
    assert page.has_xpath?('//*', :text => date)
  end
end

Given /^there is no entries$/ do
  Status.delete_all
end

Given /^the time is "([^"]*)"$/ do |time|
  Chronic.time_class = Time.zone
  @time_now = Chronic.parse(time)
  @date_now = @time_now.to_date
  Timecop.travel @time_now
end

Given /^there is an entry for today$/ do
  Status.delete_all
  Factory(:status_today)
end

Then /^I should see "([^"]*)" in a button$/ do |text|
  page.should have_xpath("//input[@value='#{text}']")
end
