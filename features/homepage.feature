Scenario: visit home page

Given Preconditions
* I am a user

When Workflow
* I go to the home page

Then Postconditions
* I should see "News"
* I should see "Help"
* I should see "About Us"
* I should see "Sign In"

