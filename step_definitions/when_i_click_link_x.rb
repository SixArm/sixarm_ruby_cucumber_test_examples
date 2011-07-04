#!/bin/env ruby
#
# Cucumber step to say "When I click link ..."
#
# There are optional words "on", "a", "the" like this"
#   - "click a link"
#   - "click the link"
#   - "click on link"
#   - "click on a link"
#   - "click on the link"
#
# Examples:
#   When I click link "Home" 
#   When I click a link "Home"
#   When I click on the link "Home"

When /^(?:|I )click (?:|on )(?:|a |the )link (".*)?$/ do |text|
  When "I follow #{text}"
end
