#!/bin/env ruby
#
# Cucumber step to say "Then I should see my ..."
#
# The "my" is the user returned by the #current_user method.
#
# The "..." can be any user method name written in plain English.
# The method name is converted to a method symbol in three steps:
#   - delete periods
#   - change non-alphanumerics to underscores
#   - downcase
#
# The leading "I" and trailing "." are optional as usual.
#
# Examples:
#   Then I should see my name
#   => Then I should see current_user.name
#
#   should see my U.S. postal address.
#   => Then I should see current_user.us_postal_address

Then /^(?:|I )should see my (.+)\.?$/ do |target|
  user=current_user
  if user==nil 
    raise "The current user is nil" 
  end
  method_sym=target.gsub(/\./,'').gsub(/\W+/,'_').downcase.to_sym
  if !user.methods.include?(method_sym)
    raise "The current user does not have a target \"#{target}\" method \"#{method_sym}\""
  end
  target_text=user.send(method_sym)
  Then "I should see \"#{target_text}\""
end
