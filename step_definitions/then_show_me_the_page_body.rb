#!/bin/env ruby
#
# Cucumber step to say "Then show me the page body."
#
# This uses capybara to print the page body to the screen;
# the page body is the HTML content of the current web page.
#
# Examples:
#   Then show me the page body
#   => "<html><body>Hello World</body></html>"

Then /^show me the page body.?$/i do
  puts page.body
end
