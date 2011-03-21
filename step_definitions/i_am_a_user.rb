Given /I am a user/ do
  @user= Factory(:user)
end

def current_user
  @user
end
