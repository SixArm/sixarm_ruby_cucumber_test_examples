# This step checks the HTML page title.
#
# Examples:
#   Then I should see title "Hello"
#   Then I should see a title "Hello"
#   Then I should see the title "Hello"
#   Then I should see the page title "Hello"

Then /^(?:|I )should see (?:|a |the )(?:|page )title "([^"]*)".?$/ do |text|
  selector='title'
  with_scope(selector) do
    if page.respond_to? :should
      page.should have_content(text)
    else
      assert page.has_content?(text)
    end
  end
end
