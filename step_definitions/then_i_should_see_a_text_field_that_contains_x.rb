#!/bin/env ruby
#
# Cucumber step to say "Then I should see a text field that contains X"
#
# Examples:
#   Then I should see a text field that contains "Hello"
#   => true or a failure message
#   Then I should see a text field with "My Form" that contains "Hello"
#   => true or a failure message

Then /^(?:|I )should see a text field(?: within "([^"]*)")? that contains "([^"]*)"$/ do |selector, value|
  with_scope(selector) do
    puts "Finding a text field that contains \"#{value}\""
    found = find('input', :type => 'text', :value => value)
    assert_not_nil(found, "I should see a text field.... value:\"#{value}\"")
  end
end

Then /^(?:|I )should not see a text field(?: within "([^"]*)")? that contains "([^"]*)"$/ do |selector, value|
  with_scope(selector) do
    puts "Finding a text field that contains \"#{value}\""
    found = find('input', :type => 'text', :value => value)
    assert_nil(found, "I should not see a text field.... value:\"#{value}\"")
  end
end
