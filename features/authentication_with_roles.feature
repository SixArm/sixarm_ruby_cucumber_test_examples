Scenario: sign in as admin

Given Preconditions
* I am a user
* I am on the home page
* My role is admin

When Workflow
* I sign in with valid credentials

Then Postconditions
* I should see "Admin"
