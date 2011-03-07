require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When /^I click the link "([^\"]*)"$/ do |link|
  click_link(link)
end
