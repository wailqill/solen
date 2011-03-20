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