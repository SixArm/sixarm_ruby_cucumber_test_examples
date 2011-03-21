Then /^(?:|I )should see button "([^"]*)"(?: within "([^"]*)")?$/ do |button_name, selector|
  with_scope(selector) do
    find_button(button_name)!=nil
  end
end
