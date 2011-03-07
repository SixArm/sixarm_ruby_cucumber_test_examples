require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


###############################################################
#
# Users
#
###############################################################

Given /I am a user/ do
  @user= Factory(:user)
end

def current_user
 @user
end

###############################################################
#
# Roles
#
###############################################################

Given /my role is (\w+)/i do |rbac_role_xid|  
  @user.rbac_roles=[Factory(:rbac_role, :xid =>  rbacrole_xid)]
end

Given /I am an admin/ do
  Given "I am a user"
  Given "my role is admin"
end


###############################################################
#
# Sign In
#
###############################################################

When /^I sign in with valid credentials\.?$/ do
  signin(@user.username, @user.password)
end

When /^I sign in with invalid credentials\.?$/ do
  signin(@user.username, 'xxxxxxxx')
end

## Helper
def signin(username,password)
  visit '/'
  fill_in('user_session[username]', :with => username)
  fill_in('user_session[password]', :with => password)
  click_button("LOG IN")
end

Given /^I am signed in\.?$/ do
  Given "I sign in with valid credentials"
end


###############################################################
#
# Content
#
###############################################################

Given /^a web browser$/ do
  #nop
end

Then /^Not allowed\.?$/ do
  Then "I should see \"You are not allowed to access this action.\""
end

